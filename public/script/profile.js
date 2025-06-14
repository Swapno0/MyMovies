// Functionality on clicking on movies.
// Adding movie to watchHistory everytime a movie is clicked from home page.
document.querySelectorAll(".movies").forEach(movie => {
    movie.addEventListener("click", async () => {
        let movieID = movie.querySelector(".movieID").innerText
        let userName = document.querySelector(".basicInfo .userName").innerText
        let response = await fetch("/home/addToWatchHistory", {
            method: "POST",
            headers:
            {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({ movieID, userName })
        })
        window.location.href = `/movie?ID=${movieID}`
    })
})


