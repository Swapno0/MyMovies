// Applying dynamic color to elements
const img = document.querySelector(".imageContainer .poster");



const colorThief = new ColorThief();

function applyColor() {
  const color = colorThief.getColor(img);
  document.querySelector(".imageCoverer").style.backgroundImage = `linear-gradient(to right,rgb(${color[0]}, ${color[1]}, ${color[2]}), rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.999),rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.98),rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.8),rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.79),rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.78))`
  document.querySelectorAll(".awardInfoBox").forEach(box=>{
        box.style.backgroundColor = `rgb(${color[0]},${color[1]},${color[2]})`
  })
  document.querySelectorAll(".castInfoBox").forEach(box=>{
        box.style.backgroundColor = `rgb(${color[0]},${color[1]},${color[2]})`
  })
  
}


if (img.complete) {
  applyColor();
} else {
  img.addEventListener("load", applyColor);
}




// adding visual to duration.
let dur = document.querySelector(".duration").innerText
let hour = Math.floor(dur/60)
let mins = dur%(hour*60)
document.querySelector(".duration").innerHTML = `<li>${hour}h ${mins}m</li>`







// adding functionality to addReview Button.
document.querySelector(".addReviewBtn").addEventListener("click", () => {
  let movieID = document.querySelector(".basicInfoBox .movieID").innerText
  window.location.href = `/movie/addReviewPage?ID=${movieID}&USERID=`
})