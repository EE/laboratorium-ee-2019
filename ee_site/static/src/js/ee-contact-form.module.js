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
    }

    [ ...document.querySelectorAll("form.ee-contact-form").values() ].forEach(form => {

        const formField = name => form.elements[name];

        const hide = name => {
            formField(name).closest(".ee-formfield").style.display = "none";
        };
        const show = name => {
            formField(name).closest(".ee-formfield").style.display = "block";
        };
        const noop = () => undefined;

        // one field has label that depends on subject chosen - this is switching routine
        const messageLabelStandard = form.querySelector(".message_standard");
        const messageLabelJobOffer = form.querySelector(".message_job_offer");
        function toggleJobOfferLabel(state) {
            if (state) {
                messageLabelStandard.style.display = "none";
                messageLabelJobOffer.style.display = "block";
            } else {
                messageLabelStandard.style.display = "block";
                messageLabelJobOffer.style.display = "none";
            }
        }

        const updateForm = () => {
            const subjectField = formField("subject");

            // set form to default state
            hide("organization_name");
            hide("recruitment_position");
            hide("attachment");
            hide("recruitment_terms_accepted");
            toggleJobOfferLabel(false);
            [...form.querySelectorAll(".ee-contact-form-type")].forEach(tile => tile.classList.remove("active"));

            // show fields based on subject field value
            if (subjectField.value === "") return;  // no subject chosen yet
            ({
                offer: () => {
                    show("organization_name");
                    toggleJobOfferLabel(false);
                },
                recruitment: () => {
                    show("recruitment_position");
                    show("attachment");
                    show("recruitment_terms_accepted");
                    toggleJobOfferLabel(true);
                },
                other: noop,
            })[ subjectField.value ]();

            // mark selected subject tile as active
            form.querySelector(`*[for="id_subject__${subjectField.value}"] .ee-contact-form-type`).classList.add("active");

            // scroll to juicy form fields
            form.querySelector(".ee-contact-form__fields-container").scrollIntoView({ behavior: "smooth", block: "center" });
        };

        // we are intrested only in subject change, but it's not possible to watch RadioNodeList
        form.addEventListener("change", updateForm);
        updateForm();
    });

})();
