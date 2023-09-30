function submitForm() {
    document.querySelector(".loading-page").classList.add("activate");
    document.body.classList.add("body-no-scrolling");
    setTimeout(()=> {
        document.body.classList.remove("body-no-scrolling");
        document.getElementById("picsSwitchForm").submit();
    }, 4000);
}

function transformNav() {

  let elements = document.querySelectorAll(".disappear");
  for (let i=0; i<elements.length;i++) {
      elements[i].classList.add("thisOne");
  }
    let navContainer = document.querySelector(".shrink");
    navContainer.classList.add("thisOne");
}

function resetNav() {
    document.querySelector(".arrow-up").classList.remove("fade-in");
    let elements = document.querySelectorAll(".disappear");
    for (let i = 0; i < elements.length; i++) {
        elements[i].classList.remove("thisOne");
    }

    let navContainer = document.querySelector(".shrink");
    navContainer.classList.remove("thisOne");
}

function scrollToTop() {
    window.scrollTo(0,0);
}

function enlarge(img, path) {
    window.location.href = path + "/singlePicture?path=" + img.src + "&category=test2";
}
window.addEventListener("scroll", () => {

    if (this.scrollY < 20) {
        resetNav();
        return;
    } else {
        document.querySelector(".arrow-up").classList.add("fade-in");
    }
    transformNav();
});




