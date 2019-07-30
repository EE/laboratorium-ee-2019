// lazy image loader based on
// https://developers.google.com/web/fundamentals/performance/lazy-loading-guidance/images-and-video/#inline_images
(function () {
    const domainWithProtocol = location.protocol + "//" + location.hostname + (location.port ? ":" + location.port : "");

    /**
     * assign "src" attribute based on display size
     **/
    const assignDynamicSrc = (image) => {
        const newSrc = `${domainWithProtocol}/rendition/${image.dataset.imageId}/${image.clientWidth}/${image.clientHeight}/`;
        if (newSrc != image.src) {
            image.src = newSrc;
        }
    };

    /**
     * call function for every image of our interest
     */
    const doForAllImages = (f) => {
        [...document.querySelectorAll("img.dynamic").values()].forEach(f);
    };

    if ("IntersectionObserver" in window) {

        const lazyImageObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const lazyImage = entry.target;
                    assignDynamicSrc(lazyImage);

                    // no need to watch this image anymore (until next resize event)
                    observer.unobserve(lazyImage);
                }
            });
        });

        // observe images after every resize
        const observeAllImages = () => {
            doForAllImages(image => lazyImageObserver.observe(image));
        };
        window.addEventListener("resize", observeAllImages);
        observeAllImages();

    } else {
        // Fall back to a more compatible method here (IntersectionObserver is sometimes not supported).
        // Just process all images on every resize.
        const assignDynamicSrcForAll = () => {
            doForAllImages(assignDynamicSrc);
        };
        window.addEventListener("resize", assignDynamicSrcForAll);
        assignDynamicSrcForAll();

    }
})();
