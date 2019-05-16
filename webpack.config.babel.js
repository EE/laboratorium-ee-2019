// Loosely based on https://eldarion.com/blog/2018/10/09/setup-guide-django-vue-webpack/

import path from "path";
import webpack from "webpack";
import autoprefixer from "autoprefixer";

import BundleTracker from "webpack-bundle-tracker";
import CleanWebpackPlugin from "clean-webpack-plugin";
import CopyWebpackPlugin from "copy-webpack-plugin";
import MiniCssExtractPlugin from "mini-css-extract-plugin";
import OptimizeCSSAssetsPlugin from "optimize-css-assets-webpack-plugin";
import UglifyJsPlugin from "uglifyjs-webpack-plugin";
import { VueLoaderPlugin } from "vue-loader";

const devMode = process.env.NODE_ENV !== "production";  // eslint-disable-line no-undef
const hotReload = process.env.HOT_RELOAD === "1";  // eslint-disable-line no-undef
const inputDir = "./src/static/src";
const outputDir = "./src/static/dist/bundles";

/* RULES */
const vueRule = {
    test: /\.vue$/,
    use: "vue-loader",
    exclude: /node_modules/
};

const styleRule = {
    test: /\.(sa|sc|c)ss$/,
    use: [
        MiniCssExtractPlugin.loader,
        { loader: "css-loader", options: { sourceMap: true } },
        { loader: "postcss-loader", options: { plugins: () => [autoprefixer()] } },
        "sass-loader"
    ]
};

const jsRule = {
    test: /\.js$/,
    loader: "babel-loader",
    include: path.resolve(`${inputDir}/js`),
    exclude: /node_modules/
};

const assetRule = {
    test: /.(jpg|png|woff(2)?|eot|ttf|svg)$/,
    loader: "file-loader"
};

/* PLUGINS */
const plugins = [
    new BundleTracker({ filename: "./.webpack-stats.json" }),
    new VueLoaderPlugin(),
    new MiniCssExtractPlugin({
        filename: devMode ? "[name].css" : "[name].[hash].css",
        chunkFilename: devMode ? "[id].css" : "[id].[hash].css"
    }),
    new webpack.HotModuleReplacementPlugin(),
    new CleanWebpackPlugin([outputDir]),
    new CopyWebpackPlugin([
        { from: `${inputDir}/images/**/*`, to: path.resolve(`${outputDir}/images/[name].[ext]`), toType: "template" },
        { from: `${inputDir}/fonts/**/*`, to: path.resolve(`${outputDir}/fonts/[name].[ext]`), toType: "template" },
    ])
];

if (devMode) {
    styleRule.use = ["css-hot-loader", ...styleRule.use];
}

/* WEBPACK OPTIONS */
export default {
    context: __dirname, // eslint-disable-line no-undef
    entry: `${inputDir}/js/main.js`,
    output: {
        path: path.resolve(outputDir),
        filename: "[name]-[hash].js",
        publicPath: hotReload ? "http://localhost:8080/" : ""
    },
    devtool: devMode ? "cheap-eval-source-map" : "source-map",
    devServer: {
        hot: true,
        quiet: false,
        headers: { "Access-Control-Allow-Origin": "*" }
    },
    module: { rules: [vueRule, jsRule, styleRule, assetRule] },
    plugins,
    optimization: {
        minimizer: [
            new UglifyJsPlugin({
                cache: true,
                parallel: true,
                sourceMap: true,
            }),
            new OptimizeCSSAssetsPlugin({}),
        ],
        splitChunks: {
            cacheGroups: {
                commons: {
                    test: /[\\/]node_modules[\\/]/,
                    name: "vendor",
                    chunks: "initial",
                },
            },
        },
    },
    resolve: {
        alias: {
            // You can remove this and get back about 10kb in projects
            // that use Vue templates in .vue files exclusively
            "vue$": "vue/dist/vue.esm.js",
        }
    }
};
