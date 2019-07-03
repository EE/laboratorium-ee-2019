(function () {
    const solutionsItemsContainer = document.querySelector(".ee-solutions-block__items-container");
    const viewportHeight = window.innerHeight;

    if (solutionsItemsContainer) {
        [ ...solutionsItemsContainer.querySelectorAll(".ee-solutions-block__item, .ee-solutions-block__item-spacer, .ee-solutions-block__item-title").values() ].forEach((el) => {
            el.style.transform = "translateX(-4rem)";
            el.style.filter = "blur(1rem)";
            el.style.opacity = 0;
        });
        document.addEventListener("scroll", () => {
            const solutionsItemsContainerTop = solutionsItemsContainer.getBoundingClientRect().top;
            if (solutionsItemsContainerTop < viewportHeight / 1.5) {
                [ ...solutionsItemsContainer.querySelectorAll(".ee-solutions-block__item, .ee-solutions-block__item-spacer, .ee-solutions-block__item-title").values() ].forEach((el, idx) => {
                    setTimeout(() => {
                        el.style.transitionDuration = "1000ms";
                        el.style.transitionTimingFunction = "cubic-bezier(0.68, -0.55, 0.265, 1.55)";
                        el.style.transform = "translateX(0)";
                        el.style.filter = "blur(0)";
                        el.style.opacity = 1;
                    }, 60 * idx);
                    setTimeout(() => {
                        el.style.transitionDuration = null;
                        el.style.transform = null;
                        el.style.transitionTimingFunction = null;
                    }, 1000);
                });
            }
        });
    }
})();
