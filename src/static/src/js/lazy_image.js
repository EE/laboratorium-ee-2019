// lazy image loader based on
// https://developers.google.com/web/fundamentals/performance/lazy-loading-guidance/images-and-video/#inline_images
document.addEventListener("DOMContentLoaded", () => {
    if ("IntersectionObserver" in window) {
        const lazyImageObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const lazyImage = entry.target;
                    lazyImage.srcset = lazyImage.dataset.srcset;
                    lazyImage.classList.remove("lazy");
                    observer.unobserve(lazyImage);
                }
            });
        });

        [...document.querySelectorAll("img.lazy").values()].forEach(lazyImage => {
            lazyImageObserver.observe(lazyImage);
        });

    } else {
        // Fall back to a more compatible method here (IntersectionObserver is sometimes not supported).
        // Just load all images.
        [...document.querySelectorAll("img.lazy").values()].forEach(lazyImage => {
            lazyImage.srcset = lazyImage.dataset.srcset;
        });

    }
});
