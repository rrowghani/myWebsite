function submitForm() {
    document.querySelector(".loading-page").classList.add("activate");
    document.body.classList.add("body-no-scrolling");
    setTimeout(()=> {
        document.body.classList.remove("body-no-scrolling");
        document.getElementById("picsSwitchForm").submit();
    }, 4000);
}

function transformNav() {
    document.querySelector(".navbar-toggler").style.display = "none";
  let elements = document.querySelectorAll(".disappear");
  for (let i=0; i<elements.length;i++) {
      elements[i].classList.add("thisOne");
  }
    let navContainer = document.querySelector(".shrink");
    navContainer.classList.add("thisOne");
}

function resetNav() {
    if (window.innerWidth < 992) {
        document.querySelector(".navbar-toggler").style.display = "block";
    }
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
function backToPictures(path, scrollAmount) {
    window.location.href = path;
    window.scrollTo(0, scrollAmount);
}
function enlarge(domObj, path, category, switchChecked) {
    window.location.href = path + "/singlePicture?path=" + domObj.children[1].src + "&category=" + category + "&picsSwitch=" + switchChecked + "&scrollAmount=" + window.scrollY;
}
window.addEventListener("scroll", () => {

    if (this.scrollY < 20) {
        resetNav();
        return;
    }
    else if (this.scrollY > 800){
        document.querySelector(".arrow-up").classList.add("fade-in");
    }
    transformNav();
});




