import path from "path";

import webpack from "webpack";

import BundleTracker from "webpack-bundle-tracker";
import { CleanWebpackPlugin } from "clean-webpack-plugin";
import CopyWebpackPlugin from "copy-webpack-plugin";
import MiniCssExtractPlugin from "mini-css-extract-plugin";
import CssMinimizerPlugin from "css-minimizer-webpack-plugin";

const devMode = process.env.NODE_ENV !== "production"; // eslint-disable-line no-undef
const hotReload = process.env.HOT_RELOAD === "1"; // eslint-disable-line no-undef
const inputPath = "./ee_site/static/src";
const outputPath = "./ee_site/static/dist/bundles";

/* RULES */

const styleRule = {
  test: /\.(sa|sc|c)ss$/,
  include: [path.resolve(`${inputPath}/scss`), path.resolve("node_modules")],
  use: [
    MiniCssExtractPlugin.loader,
    { loader: "css-loader", options: { sourceMap: true } },
    {
      loader: "postcss-loader",
      options: {
        postcssOptions: {
          plugins: ["autoprefixer"],
        },
      },
    },
    "sass-loader",
  ],
};

const jsRule = {
  test: /\.js$/,
  loader: "babel-loader",
  include: path.resolve(`${inputPath}/js`),
  exclude: /node_modules/,
};

const assetRule = {
    test: /.(jpg|png|woff(2)?|eot|ttf|svg)$/,
    loader: "file-loader"
};

/* PLUGINS */
const plugins = [
  new BundleTracker({
    path: __dirname, // eslint-disable-line no-undef
    filename: ".webpack-stats.json",
  }),
  new MiniCssExtractPlugin({
    filename: devMode ? "[name].css" : "[name].[fullhash].css",
    chunkFilename: devMode ? "[id].css" : "[id].[fullhash].css",
  }),
  new webpack.HotModuleReplacementPlugin(),
  new CleanWebpackPlugin({ cleanOnceBeforeBuildPatterns: [outputPath] }),
  new CopyWebpackPlugin({
    patterns: [
      {
        from: `${inputPath}/images/**/*`,
        to: path.resolve(`${outputPath}/images/[name][ext]`),
        toType: "template",
        noErrorOnMissing: true,
      },
      {
        from: `${inputPath}/fonts/**/*`,
        to: path.resolve(`${outputPath}/fonts/[name][ext]`),
        toType: "template",
        noErrorOnMissing: true,
      },
    ],
  }),
];

if (devMode) {
    styleRule.use = ["css-hot-loader", ...styleRule.use];
}

/* WEBPACK OPTIONS */
export default {
  context: __dirname, // eslint-disable-line no-undef
  entry: `${inputPath}/js/main.js`,
  output: {
    path: path.resolve(outputPath),
    filename: "[name]-[fullhash].js",
    publicPath: hotReload ? "http://localhost:8080/" : "/static/bundles/",
  },
  devtool: devMode ? "eval-cheap-source-map" : "source-map",
  devServer: {
    headers: { "Access-Control-Allow-Origin": "*" },
    port: 8080,
    static: [path.resolve(__dirname, "static")], // eslint-disable-line no-undef
  },
  module: { rules: [jsRule, styleRule, assetRule] },
  plugins,
  optimization: {
    minimizer: [new CssMinimizerPlugin(), "..."], // add default minimizer - https://webpack.js.org/configuration/optimization/#optimizationminimizer,
  },
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "ee_site/static/src"), // eslint-disable-line no-undef
    },
  },
};
