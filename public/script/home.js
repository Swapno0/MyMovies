

// Functionality on clicking on movies.
// Adding movie to watchHistory everytime a movie is clicked from home page.
document.querySelectorAll(".movies").forEach(movie => {
    movie.addEventListener("click", async () => {
        let movieID = movie.querySelector(".movieID").innerText
        let userName = document.querySelector(".profile_box .name").innerText
        let response = await fetch("/home/addToWatchHistory", {
            method: "POST",
            headers:
            {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({ movieID, userName})
        })
        window.location.href = `/movie?ID=${movieID}`
    })
})



// Adding functionality to to bookmark svg.
document.querySelectorAll(".moviesInnerContainer .bookmark").forEach(box => {
    box.addEventListener("click", async () => {
        if (box.style.fill == `rgb(229, 82, 82)`) {
            box.style.fill = `rgba(0, 0, 0, 0.539)`
            let movieID = box.parentElement.querySelector(".movieID").innerText
            let userName = document.querySelector(".profile_box .name").innerText
            let response = await fetch("/home/removeFromWatchList", {
                method: "POST",
                headers:
                {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({ movieID, userName })
            })
        }
        else {
            box.style.fill = `rgb(229, 82, 82)`
            let movieID = box.parentElement.querySelector(".movieID").innerText
            let userName = document.querySelector(".profile_box .name").innerText
            let response = await fetch("/home/addToWatchList", {
                method: "POST",
                headers:
                {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({ movieID, userName })
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
})









// whenever going to home page, update the status of watchlist and bookmark.
async function main() {
    let userName = document.querySelector(".profile_box .name").innerText
    let response = await fetch("/home/getWatchList", {
                method: "POST",
                headers:
                {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({userName})
            })
    let watchList = await response.json()

    // now we update the bookmark as per the watchList upon loading the page.
    for (let index = 0; index < watchList.rows.length; index++) {
        document.querySelectorAll(".movies").forEach(movie => {
            if (watchList.rows[index].MOVIEID == movie.querySelector(".movieID").innerText) {
                let parent = movie.parentElement
                parent.querySelector(".bookmark").style.fill = `rgb(229, 82, 82)`
            }
        })
    }
}
main();

let allMoviesInnerContainer = document.querySelectorAll(".moviesInnerContainer")


