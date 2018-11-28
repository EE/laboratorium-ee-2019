/* Write your ES6 here. Feel free to use imports/exports. */

window.addEventListener("load", function () {
    Vue.options.delimiters = ["[[", "]]"];
    const app = new Vue({ // eslint-disable-line no-unused-vars
        el: "#app",
        data: {
            message: "Hello, world!"
        }
    });
});
