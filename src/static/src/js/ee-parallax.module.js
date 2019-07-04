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
            el.style.backgroundPositionY = `${scrollY / 7 - 20}px`;
        }
    }
})();
