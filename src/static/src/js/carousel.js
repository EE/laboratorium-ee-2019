import bulmaCarousel from 'bulma-carousel/src/js/index';

const carousels = bulmaCarousel.attach('.hero-carousel', {
    slidesToScroll: 1,
    slidesToShow: 1,
});

/*carousels.forEach(carousel => {
    carousel.on('show', event => {
        //const backgroundImageUrl = event.element.
        console.log(event.element);
        
    });
});*/
