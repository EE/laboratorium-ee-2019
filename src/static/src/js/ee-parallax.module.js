(function () {
    document.addEventListener("scroll", () => {
        [ ...document.querySelectorAll(".ee-has-parallax").values() ].forEach(el => {
            parallaxFx(el);
        });
    });

    function parallaxFx(el) {
        const scrollY = el.getBoundingClientRect().top;
        const viewportHeight = window.innerHeight;

        if (scrollY > (viewportHeight / 2 * -1) && scrollY < viewportHeight) {
            const y = scrollY / 7 - 20;

            // support CSS background
            el.style.backgroundPositionY = `${y}px`;

            // support img tag background
            const imageElement = el.querySelector(".ee-background-image");
            if (imageElement) imageElement.style.top = `${y}px`;
        }
    }
})();
