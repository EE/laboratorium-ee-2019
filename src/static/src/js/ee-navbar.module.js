import * as $ from "jquery";

(function () {
    $(".ee-navbar-close-button").click(() => {
        $(".navbar-menu, .navbar-burger").removeClass("is-active");
    });
})();
