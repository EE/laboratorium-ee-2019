import * as $ from "jquery";

(function () {
    const carouselSlidesContainer = $(".ee-hero-carousel__container");
    const carouselSlides = $(".ee-hero-carousel__container .ee-hero-carousel__content");
    const carouselControls = $(".ee-hero-carousel__controls");
    const carouselSlidesCount = carouselSlides.get().length;

    carouselSlidesContainer.css("width", `${100 * carouselSlidesCount}vw`);
    carouselSlides.each((idx) => {
        const defaultActive = idx === 0 ? "active" : "";
        carouselControls.find(".container").append(`<div class="ee-hero-carousel__control-button ${defaultActive}" id="ee-carousel-control-${idx}"></div>`);
    });

    carouselControls.find(".ee-hero-carousel__control-button").click(e => {
        const controlIndex = $(e.target).attr("id").slice(-1);
        carouselSlidesContainer.css("transform", `translateX(-${controlIndex * 100}vw)`);
        carouselControls.find(".ee-hero-carousel__control-button").removeClass("active");
        $(e.target).addClass("active");
    });
})();
