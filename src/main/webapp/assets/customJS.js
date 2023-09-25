function transformNav() {

  let elements = document.querySelectorAll(".disappear");
  for (let i=0; i<elements.length;i++) {
      elements[i].classList.add("thisOne");
  }
    let navContainer = document.querySelector(".shrink");
    navContainer.classList.add("thisOne");
}

function resetNav() {
    let elements = document.querySelectorAll(".disappear");
    for (let i = 0; i < elements.length; i++) {
        elements[i].classList.remove("thisOne");
    }

    let navContainer = document.querySelector(".shrink");
    navContainer.classList.remove("thisOne");
}

let timer;
window.addEventListener("scroll", () => {
    if (timer != null) {
        clearTimeout(timer);
    }
    transformNav();

    timer=setTimeout( () => {
        resetNav();

    },400);
});