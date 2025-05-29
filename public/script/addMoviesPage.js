// changes the color when genre is clicked.
let genre_arr = document.querySelectorAll(".genreName")
genre_arr.forEach(element => {
    element.addEventListener("click", () =>{
        element.classList.toggle("genreClicked")
    })
})

