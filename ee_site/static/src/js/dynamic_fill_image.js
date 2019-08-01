// lazy image loader based on
// https://developers.google.com/web/fundamentals/performance/lazy-loading-guidance/images-and-video/#inline_images

const domainWithProtocol = location.protocol + "//" + location.hostname + (location.port ? ":" + location.port : "");

/**
 * round up to nearest power of sqrt(2)
 **/
const sizeOrderBase = Math.log(Math.sqrt(2));
const roundSize = (size) => {
    const sizeOrder = Math.log(size) / sizeOrderBase;
    const roundedSize = Math.round(
        Math.pow(Math.E, Math.ceil(sizeOrder) * sizeOrderBase)
    );
    return roundedSize;
};

/**
 * assign "src" attribute based on display size
 **/
const assignDynamicSrc = (image) => {
    if (!image.dataset.imageId) return;
    const width = roundSize(image.clientWidth);
    const height = roundSize(image.clientHeight);
    const newSrc = `${domainWithProtocol}/rendition/${image.dataset.imageId}/${width}/${height}/`;
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
