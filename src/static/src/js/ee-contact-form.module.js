(function () {
    const getFormSticky = () => document.querySelector(".ee-sticky-contact-form");

    // buttons for opening the sidebar
    [ ...document.querySelectorAll("[data-toggle='contactForm']").values() ].forEach(el => {
        el.addEventListener("click", () => {
            getFormSticky().classList.toggle("active");
        });
    });

    document.querySelector(".ee-sticky-contact-form__close-button").addEventListener("click", () => {
        getFormSticky().classList.remove("active");
    });

    [ ...document.querySelectorAll(".ee-form-control").values() ].forEach(el => {
        const input = el.querySelector("input[type='text']");
        const file = el.querySelector("input[type='file']");
        const textarea = el.querySelector("textarea");
        if (input) {
            input.addEventListener("change", () => {
                if (input.value) {
                    el.querySelector("label").classList.add("active");
                } else {
                    el.querySelector("label").classList.remove("active");
                }
            });
        }
        if (file) {
            el.querySelector("label").classList.add("active");
        }
        if (textarea) {
            textarea.addEventListener("change", () => {
                if (textarea.value) {
                    el.querySelector("label").classList.add("active");
                } else {
                    el.querySelector("label").classList.remove("active");
                }
            });
        }
    });
})();
