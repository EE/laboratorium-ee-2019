import * as Hammer from "hammerjs";

(function () {
    const carouselSlidesContainer = document.querySelector(".ee-hero-carousel__container");
    if (carouselSlidesContainer) {
        const carouselSlides = document.querySelectorAll(".ee-hero-carousel__container .ee-hero-carousel__content");
        const carouselControls = document.querySelector(".ee-hero-carousel__controls");
        const carouselSlidesCount = carouselSlides.values().length;
        let carouselControlsButtons = null;

        carouselSlidesContainer.style.width = `${100 * carouselSlidesCount}vw`;

        [ ...carouselSlides.keys() ].forEach((el, idx) => {
            const defaultActive = idx === 0 ? "active" : null;
            const controlButton = document.createElement("div");
            controlButton.classList.add("ee-hero-carousel__control-button");
            if (defaultActive) {
                controlButton.classList.add(defaultActive);
            }
            controlButton.setAttribute("id", `ee-carousel-control-${idx}`);
            carouselControls.querySelector(".container").appendChild(controlButton);
            carouselControlsButtons = carouselControls.querySelectorAll(".ee-hero-carousel__control-button");
        });

        [ ...carouselSlides.values() ].forEach((el, idx, arr) => {
            const carousel = new Hammer(el);
            carousel.get("swipe").set({ direction: Hammer.DIRECTION_HORIZONTAL });
            carousel.get("pan").set({ enabled: false });
            carousel.on("swipeleft", (e) => {
                if (idx < arr.length - 1) {
                    console.log("SWIPE_LEFT", idx, arr.length, e);
                    carouselSlidesContainer.style.transform = `translateX(-${(idx + 1) * 100}vw)`;
                    [ ...carouselControlsButtons.values() ].forEach((el) => {
                        el.classList.remove("active");
                    });
                    [...carouselControlsButtons.values()][idx + 1].classList.add("active");
                }
            });
            carousel.on("swiperight", (e) => {
                if (idx > 0) {
                    console.log("SWIPE_RIGHT", idx, arr.length, e);
                    carouselSlidesContainer.style.transform = `translateX(-${(idx - 1) * 100}vw)`;
                    [ ...carouselControlsButtons.values() ].forEach((el) => {
                        el.classList.remove("active");
                    });
                    [...carouselControlsButtons.values()][idx - 1].classList.add("active");
                }
            });
        });

        [ ...carouselControlsButtons.values() ].forEach((el) => {
            el.addEventListener("click", e => {
                const controlIndex = e.target.getAttribute("id").slice(-1);
                carouselSlidesContainer.style.transform = `translateX(-${controlIndex * 100}vw)`;
                [ ...carouselControlsButtons.values() ].forEach((el) => {
                    el.classList.remove("active");
                });
                el.classList.add("active");
            });
        });
    }
})();
