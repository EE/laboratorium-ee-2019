import bulmaCarousel from 'bulma-carousel/src/js/index';

const carousels = bulmaCarousel.attach('.carousel', {
    slidesToScroll: 1,
    slidesToShow: 1,
    effect: 'fade',
});

carousels.forEach(carousel => {
    carousel.on('show', event => {
        //const backgroundImageUrl = event.element.
        console.log(event.element);
        
    });
});
