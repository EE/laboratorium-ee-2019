(function () {
    const getFormSticky = () => document.querySelector(".ee-sticky-contact-form");

    if(getFormSticky()) {

        const closeButton = document.querySelector(".ee-sticky-contact-form__close-button");
        if (closeButton) closeButton.addEventListener("click", () => {
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

        /* conditional showing form fields */
        [ ...document.querySelectorAll(".ee-contact-form").values() ].forEach(form => {

            const formField = name => form.querySelector(`*[name=${name}]`);

            const hide = name => {
                formField(name).closest(".ee-form-control").style.display = "none";
            };
            const show = name => {
                formField(name).closest(".ee-form-control").style.display = "block";
            };
            const noop = () => undefined;

            const updateForm = () => {
                hide("organization_name");
                hide("recruitment_position");
                hide("attachment");
                hide("recruitment_terms_accepted");

                const subject = formField("subject").value;
                if (subject === "") return;  // no subject chosen yet
                ({
                    offer: () => {
                        show("organization_name");
                    },
                    recruitment: () => {
                        show("recruitment_position");
                        show("attachment");
                        show("recruitment_terms_accepted");
                    },
                    other: noop,
                })[ subject ]();
            };

            const subjectField = formField("subject");
            subjectField.addEventListener("change", updateForm);
            updateForm();
        });

    }
})();
