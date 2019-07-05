(function () {
    const getFormSticky = () => document.querySelector(".ee-sticky-contact-form");

    // buttons for opening the sidebar
    [...document.querySelectorAll("[data-toggle='contactForm']").values()].forEach(el => {
        el.addEventListener("click", () => {
            getFormSticky().classList.toggle("active");
        });
    });
})();
