// Adding functionality to search box.
document.querySelector(".searchBox input").addEventListener("input", function() {
    let input = this.value
    for(movie of document.querySelectorAll(".wrapper"))
    {
        if (movie.querySelector(".MovieTitle").innerText.includes(input)) {
            movie.style.display = ""
        }
        else
        {
            movie.style.display = "none"
        }
    }
})