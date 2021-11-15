import * as Hammer from "hammerjs";

(function () {
  const carouselSlidesContainer = document.querySelector(
    ".ee-hero-carousel__container",
  );
  if (carouselSlidesContainer) {
    const carouselSlides = document.querySelectorAll(
      ".ee-hero-carousel__container .ee-hero-carousel__content",
    );
    const carouselControls = document.querySelector(
      ".ee-hero-carousel__controls",
    );
    const carouselSlidesCount = carouselSlides.values().length;
    let carouselControlsButtons = null;

    carouselSlidesContainer.style.width = `${100 * carouselSlidesCount}vw`;

    [...carouselSlides.keys()].forEach((el, idx) => {
      const defaultActive = idx === 0 ? "active" : null;
      const controlButton = document.createElement("div");
      controlButton.classList.add("ee-hero-carousel__control-button");
      if (defaultActive) {
        controlButton.classList.add(defaultActive);
      }
      controlButton.setAttribute("id", `ee-carousel-control-${idx}`);
      carouselControls.querySelector(".container").appendChild(controlButton);
      carouselControlsButtons = carouselControls.querySelectorAll(
        ".ee-hero-carousel__control-button",
      );
    });

    [...carouselSlides.values()].forEach((el, idx, arr) => {
      const carousel = new Hammer(el);
      carousel.get("swipe").set({ direction: Hammer.DIRECTION_HORIZONTAL });
      carousel.get("pan").set({ enabled: false });
      carousel.on("swipeleft", () => {
        if (idx < arr.length - 1) {
          carouselSlidesContainer.style.transform = `translateX(-${
            (idx + 1) * 100
          }vw)`;
          [...carouselControlsButtons.values()].forEach((el) => {
            el.classList.remove("active");
          });
          [...carouselControlsButtons.values()][idx + 1].classList.add(
            "active",
          );
        }
      });
      carousel.on("swiperight", () => {
        if (idx > 0) {
          carouselSlidesContainer.style.transform = `translateX(-${
            (idx - 1) * 100
          }vw)`;
          [...carouselControlsButtons.values()].forEach((el) => {
            el.classList.remove("active");
          });
          [...carouselControlsButtons.values()][idx - 1].classList.add(
            "active",
          );
        }
      });
    });

    [...carouselControlsButtons.values()].forEach((el) => {
      el.addEventListener("click", (e) => {
        const controlIndex = e.target.getAttribute("id").slice(-1);
        carouselSlidesContainer.style.transform = `translateX(-${
          controlIndex * 100
        }vw)`;
        [...carouselControlsButtons.values()].forEach((el) => {
          el.classList.remove("active");
        });
        el.classList.add("active");
      });
    });
  }
})();

(function () {
  const SWIPE_DIRECTION = { left: 2, right: 4 };
  const secondaryCarousels = [
    ...document.querySelectorAll(".has-slider").values(),
  ];

  if (secondaryCarousels.length > 0) {
    secondaryCarousels.forEach((secondaryCarousel) => {
      const slidesContainer = secondaryCarousel.querySelector(
        ".is-slides-container",
      );
      const slides = [
        ...slidesContainer.querySelectorAll(".is-slide").values(),
      ];
      const slidesControls = secondaryCarousel.querySelector(
        ".ee-section__slides-controls",
      );

      slides.forEach((el, idx, arr) => {
        const carousel = new Hammer(el);
        const defaultActive = idx === 0 ? "active" : null;
        const controlButton = document.createElement("div");
        controlButton.classList.add("ee-section__slide-control-button");
        if (defaultActive) {
          controlButton.classList.add(defaultActive);
        }
        slidesControls.appendChild(controlButton);

        carousel.get("swipe").set({ direction: Hammer.DIRECTION_HORIZONTAL });
        carousel.get("pan").set({ enabled: false });

        carousel.on("swipe", (e) => {
          switch (e.direction) {
            case SWIPE_DIRECTION.left:
              if (idx < arr.length - 1) {
                slidesContainer.style.transform = `translateX(-${
                  (idx + 1) * 100
                }vw)`;
                [
                  ...slidesControls
                    .querySelectorAll(".ee-section__slide-control-button")
                    .values(),
                ].forEach((el) => {
                  el.classList.remove("active");
                });
                [
                  ...slidesControls
                    .querySelectorAll(".ee-section__slide-control-button")
                    .values(),
                ][idx + 1].classList.add("active");
              }
              break;
            case SWIPE_DIRECTION.right:
              if (idx > 0) {
                slidesContainer.style.transform = `translateX(-${
                  (idx - 1) * 100
                }vw)`;
                [
                  ...slidesControls
                    .querySelectorAll(".ee-section__slide-control-button")
                    .values(),
                ].forEach((el) => {
                  el.classList.remove("active");
                });
                [
                  ...slidesControls
                    .querySelectorAll(".ee-section__slide-control-button")
                    .values(),
                ][idx - 1].classList.add("active");
              }
              break;
            default:
              break;
          }
        });
      });
    });
  }
})();
