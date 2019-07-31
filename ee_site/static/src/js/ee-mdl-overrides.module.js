(function () {
    const fileUploadButton = document.querySelector("#contact_update_file_button");
    const fileUploadInput = document.querySelector("#id_attachment");

    if (fileUploadButton) {
        fileUploadButton.addEventListener("change", function () {
            document.querySelector("#id_attachment").value = this.files[ 0 ].name;
        });
    }
    if (fileUploadInput) {
        fileUploadInput.addEventListener("click", () => {
            fileUploadButton.click();
        });
    }
})();
