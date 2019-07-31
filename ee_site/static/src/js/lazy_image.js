// lazy image loader based on
// https://developers.google.com/web/fundamentals/performance/lazy-loading-guidance/images-and-video/#inline_images

if ("IntersectionObserver" in window) {

    const lazyImageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const lazyImage = entry.target;

                // set "sizes" to current display size
                lazyImage.sizes = `${lazyImage.clientWidth}px`;

                // assign "srcset" allowing to load perfectly sized image
                lazyImage.srcset = lazyImage.dataset.srcset;

                // no need to watch this image anymore (until next resize event)
                observer.unobserve(lazyImage);
            }
        });
    });

    // observe images after every resize
    const observeImages = () => {
        [...document.querySelectorAll("img.lazy").values()].forEach(lazyImage => {
            lazyImageObserver.observe(lazyImage);
        });
    };
    window.addEventListener("resize", observeImages);
    observeImages();

} else {
    // Fall back to a more compatible method here (IntersectionObserver is sometimes not supported).
    // Just load all images assuming default "sizes" attribute.
    [...document.querySelectorAll("img.lazy").values()].forEach(lazyImage => {
        lazyImage.srcset = lazyImage.dataset.srcset;
    });

}
