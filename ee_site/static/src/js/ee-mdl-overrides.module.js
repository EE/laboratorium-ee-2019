[...document.querySelectorAll(".ee-contact-form__attachment")].forEach(
  (attachmentField) => {
    const fileUploadButton = attachmentField.querySelector("input[type=file]");
    const fileUploadInput = attachmentField.querySelector("input[type=text]");

    // display selected file's name
    fileUploadButton.addEventListener("change", function () {
      fileUploadInput.value = this.files[0].name;
    });

    fileUploadInput.addEventListener("click", () => {
      fileUploadButton.click();
    });
  },
);
