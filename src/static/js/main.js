/* Write your ES6 here. Feel free to use imports/exports. */
/* eslint-disable no-unused-vars */

window.addEventListener("load", function () {
    Vue.options.delimiters = ["[[", "]]"];
    const app = new Vue({
        el: "#app",
        data: {
            message: "Hello, world!"
        }
    });
});
/* eslint-enable no-unused-vars */
