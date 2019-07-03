(function () {
    const topicsBlock = document.querySelector(".ee-topics-block");
    const topicsButtons = document.querySelectorAll(".ee-topics-block__buttons .ee-button");

    const setActiveButton = button => {
        const targetToggleId = button.dataset.target;

        // set section's background image
        topicsBlock.style.backgroundImage = `url(${button.dataset.sectionBackgroundUrl})`;

        // show related side-image (and hide others)
        [ ...document.querySelectorAll(".ee-topics-block__image").values() ].forEach(el => {
            el.classList.remove("active");
        });
        const sideImage = document.querySelector(`#${targetToggleId}`);
        if (sideImage) sideImage.classList.add("active");
    };

    if (topicsButtons.length) {
        [ ...topicsButtons.values() ].forEach(el => {
            el.addEventListener("mouseenter", (e) => setActiveButton(e.target));
        });

        document.addEventListener("scroll", () => {
            parallaxFx(document.querySelector(".ee-topics-block__image-container"));
        });

        setActiveButton(topicsButtons[0]);
    }

    function parallaxFx(el) {
        const scrollY = el.getBoundingClientRect().top;
        const viewportHeight = window.innerHeight;

        if (scrollY > (viewportHeight / 2 * -1) && scrollY < viewportHeight) {
            el.style.transform = `translateY(${scrollY / 5 - 50}px)`;
        }
    }
})();
