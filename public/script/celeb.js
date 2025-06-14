// Functionality on clicking the back button.
document.querySelector(".backBtn").addEventListener("click", () => {
  window.location.href = `/home`
})



// Adding functionality to clicking on the movies
document.querySelectorAll(".celebMovieBox").forEach(movie => {
    movie.addEventListener("click",() => {
        let movieID = movie.querySelector(".movieID").innerText
        window.location.href = `/movie?ID=${movieID}`
    })
})