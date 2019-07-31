(function () {
    const formTypes = [ ...document.querySelectorAll(".ee-contact-form-type").values() ];
    const messageLabelStandard = document.querySelector("#id_message_standard");
    const messageLabelJobOffer = document.querySelector("#id_message_job_offer");

    if (formTypes.length) {
        hideAll();
        toggleJobOfferLabel("off");
        formTypes.forEach((el) => {
            el.addEventListener("click", (e) => {
                hideAll();
                const id = e.target.id;
                formTypes.forEach(type => type.classList.remove("active"));
                e.target.classList.add("active");
                document.querySelector("#form-anchor").scrollIntoView({ behavior: "smooth", block: "center" });

                switch (id) {
                case "implement-project":
                    toggleJobOfferLabel("off");
                    showField("organization_name");
                    break;
                case "join-us":
                    toggleJobOfferLabel("on");
                    showField("recruitment_position");
                    showField("attachment");
                    showField("recruitment_terms_accepted");
                    break;
                case "other":
                    toggleJobOfferLabel("off");
                    () => undefined;
                    break;
                }
            });
        });
    }

    function showField(fieldName) {
        document.querySelector(`*[name=${fieldName}]`).closest(".ee-formfield").style.display = "block";
    }

    function hideField(fieldName) {
        document.querySelector(`*[name=${fieldName}]`).closest(".ee-formfield").style.display = "none";
    }

    function hideAll() {
        hideField("organization_name");
        hideField("recruitment_position");
        hideField("attachment");
        hideField("recruitment_terms_accepted");
    }

    function toggleJobOfferLabel(state) {
        if (state === "on") {
            messageLabelStandard.style.display = "none";
            messageLabelJobOffer.style.display = "block";
        } else {
            messageLabelStandard.style.display = "block";
            messageLabelJobOffer.style.display = "none";
        }
    }
})();
