(function () {
    const contactFormToggle = document.querySelector("[data-toggle='contactForm']");

    if (contactFormToggle) {
        contactFormToggle.addEventListener("click", () => {
            document.querySelector(".ee-sticky-contact-form").classList.toggle("active");
        });
    }
})();
