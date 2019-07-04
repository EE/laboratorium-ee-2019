(function () {
    const contactFormToggle = document.querySelector("[data-toggle='contactForm']");
    const getFormSticky = () => document.querySelector(".ee-sticky-contact-form");

    if (contactFormToggle) {
        contactFormToggle.addEventListener("click", () => {
            getFormSticky().classList.toggle("active");
        });

        // buttons for opening the sidebar
        [...document.querySelectorAll(".ee-contact-us-button").values()].forEach(el => {
            el.addEventListener("click", () => {
                getFormSticky().classList.add("active");
            });
        });
    }
})();
