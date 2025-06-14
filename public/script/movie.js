// Functionality on clicking the back button.
document.querySelector(".backBtn").addEventListener("click", () => {
  let previousPage = document.referrer
  console.log(previousPage)
  window.location.href = previousPage
})





// Applying dynamic color to elements
const img = document.querySelector(".imageContainer .poster");



const colorThief = new ColorThief();

function applyColor() {
  const color = colorThief.getColor(img);
  document.querySelector(".imageCoverer").style.backgroundImage = `linear-gradient(to right,rgb(${color[0]}, ${color[1]}, ${color[2]}), rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.999),rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.98),rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.8),rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.79),rgba(${color[0]}, ${color[1]}, ${color[2]}, 0.78))`
  document.querySelectorAll(".awardInfoBox").forEach(box => {
    box.style.backgroundColor = `rgb(${color[0]},${color[1]},${color[2]})`
  })
  document.querySelectorAll(".castInfoBox").forEach(box => {
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
let hour = Math.floor(dur / 60)
let mins = dur % (hour * 60)
document.querySelector(".duration").innerHTML = `<li>${hour}h ${mins}m</li>`




let box = document.querySelector(".bookmark")
box.addEventListener("click", async () => {
  if (box.style.fill == `rgb(229, 82, 82)`) {
    box.style.fill = `rgba(0, 0, 0, 0.539)`
    let movieID = document.querySelector(".basicInfoBox .movieID").innerText
    let response = await fetch("/movie/removeFromWatchList", {
      method: "POST",
      headers:
      {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ movieID })
    })
  }
  else {
    box.style.fill = `rgb(229, 82, 82)`
    let movieID = document.querySelector(".basicInfoBox .movieID").innerText
    let response = await fetch("/movie/addToWatchList", {
      method: "POST",
      headers:
      {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ movieID })
    })
  }
})

box.addEventListener("mouseenter", async () => {
  if (box.style.fill == `rgb(229, 82, 82)`) {
  }
  else {
    box.style.fill = `rgba(164, 164, 164, 0.609)`
  }
})

box.addEventListener("mouseleave", async () => {
  if (box.style.fill == `rgb(229, 82, 82)`) {
  }
  else {
    box.style.fill = `rgba(0, 0, 0, 0.539)`
  }
})




async function main() {
  let response = await fetch("/movie/getWatchList")
  let watchList = await response.json()
  let movieID = document.querySelector(".basicInfoBox .movieID").innerText

  // now we update the bookmark as per the watchList upon loading the page.
  for (let index = 0; index < watchList.rows.length; index++) {
    if (watchList.rows[index].MOVIEID == movieID) {
      document.querySelector(".bookmark").style.fill = `rgb(229, 82, 82)`
    }
  }
}
main();








// adding functionality to addReview Button.
document.querySelector(".addReviewBtn").addEventListener("click", () => {
  let movieID = document.querySelector(".basicInfoBox .movieID").innerText
  window.location.href = `/movie/addReviewPage?ID=${movieID}`
})