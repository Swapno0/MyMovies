//moviesName, releaseDate, duration, poster, coverPhoto, language, country, description 
//genre_set for array of genre
//cast_set for arrays of cast.
//director_set for arrays of director.
let genre_set = new Set()
let cast_set = new Set()
let director_set = new Set()







// changes the color when genre is clicked.
let genre_arr = document.querySelectorAll(".genreName")
// let genre_set = new Set() 
genre_arr.forEach(element => {
    element.addEventListener("click", () => {
        element.classList.toggle("genreClicked")
        genre_set.has(element.querySelector(".genreID").innerText) ? genre_set.delete(element.querySelector(".genreID").innerText) : genre_set.add(element.querySelector(".genreID").innerText)
    })
})

























// Showing dynamic info of the cast.

document.getElementsByName("celebSearchBox")[0].addEventListener("input", async () => {
    const input = document.getElementsByName("celebSearchBox")[0].value
    const response = await fetch(`/admin/getCastInfo`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({ input: input })
    })
    const castInfo = await response.json()

    // Now show it in frontend.
    let content = ""
    if (input != "") {
        for (let index = 0; index < castInfo.rows.length; index++) {
            content += `
            <li class="flex align cursor">
            <img class="celebAvatar" src="${castInfo.rows[index].AVATAR}" width="50px" height="50px">
            <div class="celebName">${castInfo.rows[index].NAME}</div>
            <div class="celebId" hidden>${castInfo.rows[index].ID}</div>
            </li>`
        }
    }
    document.querySelector(".celebShowBox ul").innerHTML = content

})



// Adding functionality to the clicking of the celebShowBoxes and adding the cast.
// let cast_set = new Set()
function isEqual(obj1, obj2) {
    return JSON.stringify(obj1) === JSON.stringify(obj2);
}
let equal = false


document.querySelector(".castContainer .celebShowBox ul").addEventListener("click", (e) => {
    if (e.target && e.target.tagName === "LI") {
        const li = e.target;

        document.querySelector(".castContainer .celebSelectedBox").innerHTML = `
        <div class="flex align cursor">
        ${li.innerHTML}
        </div>
        <div class = "add flex align cursor">Add</div>
        `

        document.querySelector(".castContainer .celebShowBox ul").innerHTML = ""

        document.querySelector(".castContainer .celebSelectedBox .add").addEventListener("click", () => {
            let celebID = document.querySelector(".castContainer .celebSelectedBox .celebId").innerText
            let celebName = document.querySelector(".castContainer .celebSelectedBox .celebName").innerText
            let celebAvatar = document.querySelector(".castContainer .celebSelectedBox img").src
            let role = document.querySelector(".castContainer .role").value
            let castData = ({ celebID: celebID, role: role, celebName: celebName, celebAvatar: celebAvatar })

            for (const data of cast_set) {
                if (isEqual(data, castData)) {
                    equal = true
                }
            }
            if (equal != true) {
                cast_set.add(castData)
            }
            console.log(cast_set)
            document.querySelector(".castContainer .celebSelectedBox").innerHTML = ""
            document.getElementsByName("celebSearchBox")[0].value = ""
            document.getElementsByName("roleName")[0].value = ""
            equal = false
            let castContent = ""
            for (let item of cast_set) {
                castContent += `
            <div class="flex align cursor">
                <div hidden class="celebID">${item.celebID}</div>
                <img src="${item.celebAvatar}" height=50px width=50px>
                <div class="celebName">${item.celebName}</div>
                <div class="roleName">${item.role}</div>
                <img class="cross_btn" src="/images/icons/cross_icon.svg" alt="" height=30px width=30px>
            </div>`
            }
            console.log(castContent)
            document.querySelector(".castContainer .celebAddedBox").innerHTML = castContent





            document.querySelectorAll(".castContainer .celebAddedBox .cross_btn").forEach(element => {
                console.log(300)
                element.addEventListener("click", (e) => {
                    console.log(100)
                    let div = element.parentElement
                    let id = div.getElementsByClassName("celebID")[0].innerText
                    let role = div.getElementsByClassName("roleName")[0].innerText
                    for (let item of cast_set) {
                        if (id === item.celebID && role === item.role) {
                            cast_set.delete(item)
                        }
                    }


                    let castContent = ""
                    for (let item of cast_set) {
                        castContent += `
                        <div class="flex align cursor">
                            <div hidden class="celebID">${item.celebID}</div>
                            <img src="${item.celebAvatar}" height=50px width=50px>
                            <div class="celebName">${item.celebName}</div>
                            <div class="roleName">${item.role}</div>
                            <img class="cross_btn" src="/images/icons/cross_icon.svg" alt="" height=30px width=30px>
                        </div>`
                    }
                    console.log(castContent)
                    div.querySelector(".celebID").hidden = true
                    div.querySelector("img").hidden = true
                    div.querySelector(".celebName").hidden = true
                    div.querySelector(".roleName").hidden = true
                    div.querySelector(".cross_btn").hidden = true
                    div.style.height = "0px"
                    div.style.padding = "0px 5px"
                    console.log(200)
                })
            })
        })


    }

})











































//Showing dynamic info of the directors

document.getElementsByName("celebSearchBox")[1].addEventListener("input", async () => {
    const input = document.getElementsByName("celebSearchBox")[1].value
    const response = await fetch(`/admin/getCastInfo`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({ input: input })
    })
    const castInfo = await response.json()

    // Now show it in frontend.
    let content = ""
    if (input != "") {
        for (let index = 0; index < castInfo.rows.length; index++) {
            content += `
            <li class="flex align cursor">
            <img class="celebAvatar" src="${castInfo.rows[index].AVATAR}" width="50px" height="50px">
            <div class="celebName">${castInfo.rows[index].NAME}</div>
            <div class="celebId" hidden>${castInfo.rows[index].ID}</div>
            </li>`
        }
    }
    document.querySelectorAll(".celebShowBox ul")[1].innerHTML = content

})


// Adding functionality to clicking on celebShow and adding them to director cast.
// let director_set= new Set()

document.querySelector(".directorContainer .celebShowBox ul").addEventListener("click", (e) => {
    if (e.target && e.target.tagName === "LI") {
        const li = e.target;

        document.querySelector(".directorContainer .celebSelectedBox").innerHTML = `
        <div class="flex align cursor">
        ${li.innerHTML}
        </div>
        <div class = "add flex align cursor">Add</div>
        `

        document.querySelector(".directorContainer .celebShowBox ul").innerHTML = ""

        document.querySelector(".directorContainer .celebSelectedBox .add").addEventListener("click", () => {
            let celebID = document.querySelector(".directorContainer .celebSelectedBox .celebId").innerText
            let celebName = document.querySelector(".directorContainer .celebSelectedBox .celebName").innerText
            let celebAvatar = document.querySelector(".directorContainer .celebSelectedBox img").src
            let directorData = ({ celebID: celebID, celebName: celebName, celebAvatar: celebAvatar })

            for (const data of director_set) {
                if (isEqual(data, directorData)) {
                    equal = true
                }
            }
            if (equal != true) {
                director_set.add(directorData)
            }
            console.log(director_set)
            document.querySelector(".directorContainer .celebSelectedBox").innerHTML = ""
            document.getElementsByName("celebSearchBox")[1].value = ""
            equal = false
            let directorContent = ""
            for (let item of director_set) {
                directorContent += `
            <div class="flex align cursor">
                <div hidden class="celebID">${item.celebID}</div>
                <img src="${item.celebAvatar}" height=50px width=50px>
                <div class="celebName">${item.celebName}</div>
                <img class="cross_btn" src="/images/icons/cross_icon.svg" alt="" height=30px width=30px>
            </div>`
            }
            console.log(directorContent)
            document.querySelector(".directorContainer .celebAddedBox").innerHTML = directorContent





            document.querySelectorAll(".directorContainer .celebAddedBox .cross_btn").forEach(element => {
                console.log(300)
                element.addEventListener("click", (e) => {
                    console.log(100)
                    let div = element.parentElement
                    let id = div.getElementsByClassName("celebID")[0].innerText
                    for (let item of director_set) {
                        if (id === item.celebID) {
                            director_set.delete(item)
                        }
                    }


                    let directorContent = ""
                    for (let item of director_set) {
                        directorContent += `
                        <div class="flex align cursor">
                            <div hidden class="celebID">${item.celebID}</div>
                            <img src="${item.celebAvatar}" height=50px width=50px>
                            <div class="celebName">${item.celebName}</div>
                            <img class="cross_btn" src="/images/icons/cross_icon.svg" alt="" height=30px width=30px>
                        </div>`
                    }
                    console.log(directorContent)
                    div.querySelector(".celebID").hidden = true
                    div.querySelector("img").hidden = true
                    div.querySelector(".celebName").hidden = true
                    div.querySelector(".cross_btn").hidden = true
                    div.style.height = "0px"
                    div.style.padding = "0px 5px"
                    console.log(200)
                })
            })
        })


    }

})




















// Adding functionality to awardContainer section.
document.querySelector(".castAwardContainer")








































// Adding Functionality to add to database button.
document.querySelector(".nextPageBtn").addEventListener("click", async () => {
    //moviesName, releaseDate, duration, poster, coverPhoto, language, country, description 
    let moviesName = document.getElementsByName("moviesName")[0].value
    let releaseDate = document.getElementsByName("releaseDate")[0].value
    let duration = document.getElementsByName("duration")[0].value
    let language = document.getElementsByName("language")[0].value
    let country = document.getElementsByName("country")[0].value
    let description = document.getElementsByName("description")[0].value
    let poster = document.getElementsByName("poster")[0].files[0]
    let coverPhoto = document.getElementsByName("coverPhoto")[0].files[0]
    let movieData = { moviesName, releaseDate, duration, language, country, description }

    let allData = new FormData()
    allData.append('poster', poster)
    allData.append('coverPhoto', coverPhoto)
    allData.append('movieData', JSON.stringify(movieData))
    allData.append('cast', JSON.stringify(Array.from(cast_set)))
    allData.append('genre', JSON.stringify(Array.from(genre_set)))
    allData.append('director', JSON.stringify(Array.from(director_set)))


    const response = await fetch("/admin/addMovies", {
        method: "POST",
        body: allData
    })
    let data = await response.json()
    // console.log(data)
    window.location.href = data.redirectURL
})




