import * as sentry from "@sentry/browser";

const DSN_PUBLIC = document.getElementById("DSN_PUBLIC").textContent;
if (DSN_PUBLIC) {
    sentry.init({
        dsn: DSN_PUBLIC,
    });
}
