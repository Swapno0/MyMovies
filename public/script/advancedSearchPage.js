

let genre_set = new Set()
let language_set = new Set()






// changes the color when genre is clicked.
let genre_arr = document.querySelectorAll(".genreName")
// let genre_set = new Set() 
genre_arr.forEach(element => {
    element.addEventListener("click", () => {
        element.classList.toggle("genreClicked")
        genre_set.has(element.querySelector(".genreID").innerText.trim()) ? genre_set.delete(element.querySelector(".genreID").innerText.trim()) : genre_set.add(element.querySelector(".genreID").innerText.trim())
    })
})




// changes the color when language is clicked. Also make sure only one language is selected at a time
let language_arr = document.querySelectorAll(".languageName")
// let genre_set = new Set() 
language_arr.forEach(element => {
    element.addEventListener("click", () => {
        language_arr.forEach(elm => {
            elm.classList.remove("languageClicked")
        })


        element.classList.toggle("languageClicked")
        language_set.clear()
        language_set.has(element.querySelector(".languageID").innerText.trim()) ? language_set.delete(element.querySelector(".languageID").innerText.trim()) : language_set.add(element.querySelector(".languageID").innerText.trim())
    })
})






// Clicking the Filter Button.
document.querySelector(".filterBtn").addEventListener("click", async () => {
    let duration = document.querySelector(".durationFilter input").value
    let rating = document.querySelector(".ratingFilter input").value
    let startDate = document.querySelector(".releaseDateFilter1 input").value
    let endDate = document.querySelector(".releaseDateFilter2 input").value
    let dataFilters = { duration, rating, startDate, endDate }

    let allData = new FormData()
    allData.append('genre', JSON.stringify(Array.from(genre_set)))
    allData.append('language', JSON.stringify(Array.from(language_set)))
    allData.append('data', JSON.stringify(dataFilters))

    const response = await fetch("/advancedSearch/filter", {
        method: "POST",
        body: allData
    })
    let data = await response.json()



    // Now we print the recieved data.
    let content = ``
    let size = data?.movieInfo?.rows ? data.movieInfo.rows.length:0
    for (let i = 0; i < size; i++) 
    {
        content += `<div class="movieContainer flex align cursor">
                        <div class="movieId" hidden>${data.movieInfo.rows[i].ID}</div>
                        <img src="${data.movieInfo.rows[i].POSTER}" height="85px">
                        <div class = "movieName">${data.movieInfo.rows[i].TITLE}</div>
                    </div>`
        
    }
    console.log(content)
    document.querySelector(".allMovieContainer").innerHTML = content;
    content = ""






    // Adding eventlistener to all the movies.
    document.querySelectorAll(".movieContainer").forEach(movie => {
        movie.addEventListener("click", () => {
            let movieID = movie.querySelector(".movieId").innerText
            window.location.href = `/movie?ID=${movieID}`
        })
    })
   
    
})




