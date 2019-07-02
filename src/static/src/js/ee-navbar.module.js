(function () {
    document.querySelector(".ee-navbar-close-button").addEventListener("click", () => {
        [...document.querySelectorAll(".navbar-menu, .navbar-burger").values()].forEach(el => {
            el.classList.remove("is-active");
        });
    });
})();
