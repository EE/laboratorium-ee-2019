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

    // compute proper size image url
    const width = roundSize(image.clientWidth);
    const height = roundSize(image.clientHeight);
    const newSrc = `${domainWithProtocol}/rendition/${image.dataset.imageId}/${width}/${height}/`;
    if (newSrc == image.src) return;

    // create clone to cover image during src change
    const clonedImage = image.cloneNode();
    clonedImage.classList.remove('dynamic');
    clonedImage.style.transition = "opacity 0.3s";
    if (image.nextSibling) {
        image.parentNode.insertBefore(clonedImage, image.nextSibling);
    } else {
        image.parentNode.appendChild(clonedImage);
    }

    // hide original image
    image.style.opacity = 0;

    // load proper size image into original img tag
    const onloaded = () => {
        // show image
        image.style.opacity = clonedImage.style.opacity;

        // delete cover image
        clonedImage.style.opacity = 0;
        setTimeout(() => clonedImage.remove(), 1000);

        image.removeEventListener('load', onloaded);
    };
    image.addEventListener('load', onloaded);
    image.src = newSrc;
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
