// Adding functionality to search box.
document.querySelector(".searchBox input").addEventListener("input", function() {
    let input = this.value
    for(movie of document.querySelectorAll(".wrapper"))
    {
        if (movie.querySelector(".MovieTitle").innerText.toLowerCase().includes(input.toLowerCase())) {
            movie.style.display = ""
        }
        else
        {
            movie.style.display = "none"
        }
    }
})