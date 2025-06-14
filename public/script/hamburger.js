// Adding functionality to hamburger button.
document.querySelector(".hamburger_btn").addEventListener("click", () => {
    document.body.classList.add("blur");
    document.querySelector(".box").classList.add("hamburger_pop");
    document.querySelector(".box").classList.add("unblur");
    document.querySelector(".box").classList.remove("hamburger_close");
})


// Adding functionality to close hamburger menu.
document.querySelector(".cross_btn").addEventListener("click", () => {
    document.body.classList.remove("blur");
    document.querySelector(".box").classList.add("hamburger_close");
    document.querySelector(".box").classList.remove("hamburger_pop");
})


// Adding functionality to clicking on profile.