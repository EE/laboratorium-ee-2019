[...document.querySelectorAll(".ee-topics-block")].forEach((topicsBlock) => {
  const setActiveButton = (button) => {
    // show only related section background element
    [...topicsBlock.querySelectorAll(".ee-background-image").values()].forEach(
      (el) => {
        el.classList.add("is-invisible");
      },
    );
    const backgroundImageId = button.dataset.backgroundImageId;
    const backgroundImage = topicsBlock.querySelector(
      `.ee-background-image[data-image-id='${backgroundImageId}']`,
    );
    if (backgroundImage) backgroundImage.classList.remove("is-invisible");

    // show related side-image (and hide others)
    [
      ...topicsBlock.querySelectorAll(".ee-topics-block__image").values(),
    ].forEach((el) => {
      el.classList.remove("active");
    });
    const sideImageId = button.dataset.sideImageId;
    const sideImage = topicsBlock.querySelector(
      `.ee-topics-block__image[data-image-id='${sideImageId}']`,
    );
    if (sideImage) sideImage.classList.add("active");
  };

  const topicsButtons = topicsBlock.querySelectorAll(
    ".ee-topics-block__buttons .ee-button",
  );
  [...topicsButtons.values()].forEach((el) => {
    el.addEventListener("mouseenter", (e) => setActiveButton(e.target));
  });

  // parallax fx
  document.addEventListener("scroll", () => {
    parallaxFx(topicsBlock.querySelector(".ee-topics-block__image-container"));
  });

  function parallaxFx(el) {
    const scrollY = el.getBoundingClientRect().top;
    const viewportHeight = window.innerHeight;

    if (scrollY > (viewportHeight / 2) * -1 && scrollY < viewportHeight) {
      el.style.transform = `translateY(${scrollY / 5 - 50}px)`;
    }
  }

  // initial show
  setActiveButton(topicsButtons[0]);
});
