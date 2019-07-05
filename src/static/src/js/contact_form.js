const formField = name => document.querySelector(`.ee-contact-form *[name=${name}]`);

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
    const subjectField = formField("subject");
    if (subjectField) {
        subjectField.addEventListener("change", updateForm);
        updateForm();
    }
});
