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


// Adding functionality to searchbar.
let allMovies
let allCelebs
async function bringInfo () {
    let response = await fetch("/searchShow")
    let data = await response.json()
    allMovies = data.allMovies
    allCelebs = data.allCelebs
}
bringInfo()
document.querySelector(".search_bar input").addEventListener("input", async function() {
    let input = this.value
    let content = ""
    if (input == "") {
        content = ""
    }
    else{
        for (let index = 0; index < allMovies.rows.length; index++) {
            if (allMovies.rows[index].TITLE.toLowerCase().includes(input.toLowerCase())) {
                content += `<div class = "searchedMovieBox flex align cursor">
                                <div class = "s_movieID" hidden>${allMovies.rows[index].ID}</div>
                                <img src="${allMovies.rows[index].POSTER}" height="85px">
                                
                                <div class = "s_movieName">${allMovies.rows[index].TITLE}</div>
                            </div>
                            `
            }
        }
        for (let index = 0; index < allCelebs.rows.length; index++) {
            if (allCelebs.rows[index].NAME.toLowerCase().includes(input.toLowerCase())) {
                content += `<div class = "searchedCelebBox flex align cursor">
                                <div class = "s_celebID" hidden>${allCelebs.rows[index].ID}</div>
                                <img src="${allCelebs.rows[index].AVATAR}" height="85px" width="70px">
                                
                                <div class = "s_celebName">${allCelebs.rows[index].NAME}</div>
                            </div>
                            `
            }
        }
    }
    document.querySelector(".infoBoxes").innerHTML = content


    // Adding functionality to searched movies and celebs.
    document.querySelectorAll(".searchedMovieBox").forEach(movie => {
        movie.addEventListener("click", () => {
            let movieID = movie.querySelector(".s_movieID").innerText
            window.location.href = `/movie?ID=${movieID}`
        })
    })
    document.querySelectorAll(".searchedCelebBox").forEach(celeb => {
        celeb.addEventListener("click", () => {
            let celebID = celeb.querySelector(".s_celebID").innerText
            window.location.href = `/celeb?ID=${celebID}`
        })
    })

})