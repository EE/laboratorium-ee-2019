import * as sentry from "@sentry/browser";

const DSN_PUBLIC = document.getElementById("DSN_PUBLIC").textContent;
if (DSN_PUBLIC) {
    sentry.init({
        dsn: DSN_PUBLIC,
    });
}

window.addEventListener("load", function () {
    Vue.options.delimiters = ["[[", "]]"];
    const app = new Vue({ // eslint-disable-line no-unused-vars
        el: "#app",
        data: {
            message: "Hello, world!"
        }
    });
});
