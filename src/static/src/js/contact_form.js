const formField = name => document.querySelector(`#contact *[name=${name}]`);

const hide = name => {
    formField(name).closest(".field").style.display = "none";
};
const show = name => {
    formField(name).closest(".field").style.display = "block";
};
const noop = () => undefined;

const updateForm = () => {
    hide("organization_name");
    hide("recruitment_position");
    hide("attachment");

    const subject = formField("subject").value;
    if (subject === "") return;  // no subject chosen yet
    ({
        offer: () => {
            show("organization_name");
        },
        recruitment: () => {
            show("recruitment_position");
            show("attachment");
        },
        other: noop,
    })[subject]();
};

document.addEventListener("DOMContentLoaded", () => {
    formField("subject").addEventListener("change", updateForm);
    updateForm();
});
