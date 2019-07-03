(function () {
    const topicsBlock = document.querySelector(".ee-topics-block");
    const topicsButtons = document.querySelectorAll(".ee-topics-block__buttons .ee-button");

    if (topicsButtons.length) {
        [ ...topicsButtons.values() ].forEach(el => {
            el.addEventListener("mouseenter", (e) => {
                const targetToggleId = e.target.dataset.target;
                const bgId = e.target.dataset.target.slice(-1);
                const bgSrc = topicsBlock.style.backgroundImage;
                topicsBlock.style.backgroundImage = bgSrc.replace(/(\d){1}(\.png)/g, `${bgId}$2`);
                [ ...document.querySelectorAll(".ee-topics-block__image").values() ].forEach(el => {
                    el.classList.remove("active");
                });
                document.querySelector(`#${targetToggleId}`).classList.add("active");
            });
        });

        document.addEventListener("scroll", () => {
            parallaxFx(document.querySelector(".ee-topics-block__image-container"));
        });
    }

    function parallaxFx(el) {
        const scrollY = el.getBoundingClientRect().top;
        const viewportHeight = window.innerHeight;

        if (scrollY > (viewportHeight / 2 * -1) && scrollY < viewportHeight) {
            el.style.transform = `translateY(${scrollY / 5 - 50}px)`;
        }
    }
})();
