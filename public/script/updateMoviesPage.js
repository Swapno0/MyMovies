// import { application } from "express"

let cast_set = new Set()
let director_set = new Set()
let movie_award_set = new Set()
let genre_set = new Set()





// Intitially adding existing genre to the genre_set.
document.querySelectorAll(".genreContainer .genreBox").forEach(box => {
    const genreID = box.querySelector(".genreID").innerText
    const genreName = box.querySelector(".genreName").innerText
    const data = { genreID, genreName }
    genre_set.add(data)
})

// Adding functionality to cross btn of genre.
document.querySelectorAll(".genreContainer .genreBox").forEach(box => {
    const genreID = box.querySelector(".genreID").innerText

    box.querySelector(".cross_btn").addEventListener("click", () => {
        for (let item of genre_set) {
            if (genreID === item.genreID) {
                genre_set.delete(item)
                box.querySelector(".genreName").hidden = true
                box.querySelector(".cross_btn").hidden = true
                box.style.height = "0px"
                box.style.width = "0px"
                box.style.padding = "0px"
                box.style.margin = "0px"
            }
        }
    })
})


//Adding functionalities to add genre to genre_set.
let check_equal = false
document.querySelectorAll(".genreUpdateContainer .genreBox").forEach(box => {
    box.addEventListener("click", () => {
        let genreID = box.querySelector(".genreID").innerText
        let genreName = box.querySelector(".genreName").innerText
        const data = { genreID, genreName }
        for (const item of genre_set) {
            if (item.genreID == genreID) {
                console.log("not added")
                check_equal = true
            }
        }
        if (check_equal == false) {
            console.log("added")
            genre_set.add(data)
        }




        let content = ""
        for (let items of genre_set) {
            content +=
                `
            <div class="genreBox flex align">
                <div class="genreInfo flex align">
                    <div class="genreID" hidden>${items.genreID}</div>
                    <div class="genreName">${items.genreName}</div>
                </div>
    
                <div class="cross_btn cursor"><img src="/images/icons/cross_icon.svg" alt=""></div>
            </div>
            `
        }
        document.querySelector(".container5 .genreContainer").innerHTML = content
        genreName = ""
        genreID = ""
        check_equal = false



        // Adding fuctionality to cross btn of genre.
        document.querySelectorAll(".container5 .genreContainer .genreBox").forEach(box => {
            const genreID = box.querySelector(".genreID").innerText

            box.querySelector(".cross_btn").addEventListener("click", () => {
                for (let item of genre_set) {
                    if (genreID === item.genreID) {
                        genre_set.delete(item)
                        box.querySelector(".genreName").hidden = true
                        box.querySelector(".cross_btn").hidden = true
                        box.style.height = "0px"
                        box.style.width = "0px"
                        box.style.padding = "0px"
                        box.style.margin = "0px"
                    }
                }
            })
        })
    })
})





// Initially adding the existing cast of the movies to cast_set.
document.querySelectorAll(".castInfo .castBox").forEach(box => {
    const celebName = box.querySelector(".info .name").innerText
    const celebID = box.querySelector(".info .celebID").innerText
    const image = box.querySelector(".info img").src
    const role = box.querySelector(".info .role").innerText

    const data = { celebID, celebName, image, role }
    cast_set.add(data)
})

// let elm = document.querySelector(".basicInfoUpdateBox")
// elm.querySelector(".moviesName input").value = document.querySelector(".basicInfo .movieTitle").innerText
// let year = document.querySelector(".basicInfo .movieReleaseDate").innerText.split(":")[1].split("-")[0].trim()
// let month = document.querySelector(".basicInfo .movieReleaseDate").innerText.split(":")[1].split("-")[1].trim()
// let day = document.querySelector(".basicInfo .movieReleaseDate").innerText.split(":")[1].split("-")[2].trim()
// elm.querySelector(".releaseDate input").value = `${month}/${day}/${year}`
// elm.querySelector(".duration input").value = document.querySelector(".basicInfo .movieDuration").innerText.split(":")[1].split("mins")[0].trim()
// elm.querySelector(".language input").value = document.querySelector(".basicInfo .movieLanguage").innerText.split(":")[1].trim()
// elm.querySelector(".country input").value = document.querySelector(".basicInfo .movieCountry").innerText.split(":")[1].trim()
// elm.querySelector(".description textarea").value = document.querySelector(".basicInfo .movieDescription").innerText





// Adding Functionality to searchbox of cast.
let searchBox = document.querySelector(".container2 .updateCastInfo .searchBox .searchBox")
searchBox.addEventListener("input", function () {
    const input = this.value
    // console.log(input)
    for (celeb of document.querySelectorAll(".celebShowBox .castBox")) {

        if (celeb.querySelector(".name").innerText.includes(input)) {
            console.log(200)
            celeb.style.display = ""
        } else {
            celeb.style.display = "none"
            console.log(400)
        }
    }
})


// Adding functionalities to the cross button.
document.querySelectorAll(".castInfo .castBox").forEach(box => {
    const celebID = box.querySelector(".celebID").innerText
    const role = box.querySelector(".name_role .role").innerText

    box.querySelector(".cross_btn").addEventListener("click", () => {
        for (let item of cast_set) {
            if (celebID === item.celebID && role === item.role) {
                cast_set.delete(item)
                box.querySelector(".info img").hidden = true
                box.querySelector(".info .name_role").hidden = true
                box.querySelector(".cross_btn").hidden = true
                box.style.height = "0px"
                box.style.width = "0px"
                box.style.padding = "0px"
                box.style.margin = "0px"
            }
        }
    })
})


//Adding functionality to clicking the castBox
document.querySelectorAll(".celebShowBox .castBox").forEach(box => {
    box.addEventListener("click", () => {
        const data = box.innerHTML
        document.querySelector(".selectPortion .celebSelected").innerHTML = `${data}`
    })
})




// Adding functionality to add button.
let equal = false
document.querySelector(".updateCastInfo .addBtn").addEventListener("click", () => {
    let celebName = document.querySelector(".selectPortion .celebSelected .name").innerText
    let image = document.querySelector(".selectPortion .celebSelected img").src
    let celebID = document.querySelector(".selectPortion .celebSelected .celebID").innerText
    let role = document.querySelector(".selectPortion .roleBox input").value
    let castData = { celebName, celebID, image, role }

    if (role != "" && celebName != "" && image != "" && celebID != "") {
        for (const data of cast_set) {
            if (data.celebID == castData.celebID && data.role == castData.role) {
                equal = true
            }
        }
        if (equal == false) {
            cast_set.add(castData)
        }
    }

    let content = ""
    for (let cast of cast_set) {
        content +=
            `
        <div class="castBox flex align">
            <div class="info flex align">
                <div class="celebID" hidden>${cast.celebID}</div>
                <img src="${cast.image}" alt="" width="65px" height="83px">
                <div class="name_role">
                    <div class="name">
                        ${cast.celebName}
                    </div>
                    <div class="role">
                        ${cast.role}
                    </div>
                </div>
            </div>
            <div class="cross_btn cursor"><img src="/images/icons/cross_icon.svg" alt=""></div>
        </div>
        `
    }
    document.querySelector(".castInfo").innerHTML = content


    celebName = ""
    celebID = ""
    image = ""
    role = ""
    equal = false
    document.querySelector(".selectPortion .roleBox input").value = ""
    document.querySelector(".selectPortion .celebSelected").innerHTML = ""









    // Adding functionalities to the cross button.
    document.querySelectorAll(".castInfo .castBox").forEach(box => {
        const celebID = box.querySelector(".celebID").innerText
        const role = box.querySelector(".name_role .role").innerText

        box.querySelector(".cross_btn").addEventListener("click", () => {
            for (let item of cast_set) {
                if (celebID === item.celebID && role === item.role) {
                    cast_set.delete(item)
                    box.querySelector(".info img").hidden = true
                    box.querySelector(".info .name_role").hidden = true
                    box.querySelector(".cross_btn").hidden = true
                    box.style.height = "0px"
                    box.style.width = "0px"
                    box.style.padding = "0px"
                    box.style.margin = "0px"
                }
            }
        })
    })
})
































//// Director Functionalities.

// Initially adding the existing cast of the movies to cast_set.
document.querySelectorAll(".directorInfo .directorBox").forEach(box => {
    const celebName = box.querySelector(".info .name").innerText
    const celebID = box.querySelector(".info .celebID").innerText
    const image = box.querySelector(".info img").src

    const data = { celebID, celebName, image }
    director_set.add(data)
})





// Adding Functionality to searchbox of cast.
let searchBox_d = document.querySelector(".container3 .updateDirectorInfo .searchBox .searchBox")
searchBox_d.addEventListener("input", function () {
    const input = this.value
    // console.log(input)
    for (celeb of document.querySelectorAll(".updateDirectorInfo .celebShowBox .directorBox")) {

        if (celeb.querySelector(".name").innerText.includes(input)) {
            console.log(200)
            celeb.style.display = ""
        } else {
            celeb.style.display = "none"
            console.log(400)
        }
    }
})


// Adding functionalities to the cross button.
document.querySelectorAll(".directorInfo .directorBox").forEach(box => {
    const celebID = box.querySelector(".celebID").innerText

    box.querySelector(".cross_btn").addEventListener("click", () => {
        for (let item of director_set) {
            if (celebID === item.celebID) {
                director_set.delete(item)
                box.querySelector(".info img").hidden = true
                box.querySelector(".info .name_role").hidden = true
                box.querySelector(".cross_btn").hidden = true
                box.style.height = "0px"
                box.style.width = "0px"
                box.style.padding = "0px"
                box.style.margin = "0px"
            }
        }
    })
})


//Adding functionality to clicking the castBox
document.querySelectorAll(".updateDirectorInfo .celebShowBox .directorBox").forEach(box => {
    box.addEventListener("click", () => {
        const data = box.innerHTML
        document.querySelector(".updateDirectorInfo .selectPortion .celebSelected").innerHTML = `${data}`
    })
})




// Adding functionality to add button.
let equal_d = false
document.querySelector(".updateDirectorInfo .addBtn").addEventListener("click", () => {
    let celebName = document.querySelector(".updateDirectorInfo .selectPortion .celebSelected .name").innerText
    let image = document.querySelector(".updateDirectorInfo .selectPortion .celebSelected img").src
    let celebID = document.querySelector(".updateDirectorInfo .selectPortion .celebSelected .celebID").innerText
    let directorData = { celebName, celebID, image }

    if (celebName != "" && image != "" && celebID != "") {
        for (const data of director_set) {
            if (data.celebID == directorData.celebID && data.role == directorData.role) {
                equal_d = true
            }
        }
        if (equal_d == false) {
            director_set.add(directorData)
        }
    }

    let content = ""
    for (let director of director_set) {
        content +=
            `
        <div class="directorBox flex align">
            <div class="info flex align">
                <div class="celebID" hidden>${director.celebID}</div>
                <img src="${director.image}" alt="" width="65px" height="83px">
                <div class="name_role">
                    <div class="name">
                        ${director.celebName}
                    </div>
                </div>
            </div>
            <div class="cross_btn cursor"><img src="/images/icons/cross_icon.svg" alt=""></div>
        </div>
        `
    }
    document.querySelector(".directorInfo").innerHTML = content


    celebName = ""
    celebID = ""
    image = ""
    equal_d = false
    document.querySelector(".updateDirectorInfo .selectPortion .celebSelected").innerHTML = ""









    // Adding functionalities to the cross button.
    document.querySelectorAll(".directorInfo .directorBox").forEach(box => {
        const celebID = box.querySelector(".celebID").innerText

        box.querySelector(".cross_btn").addEventListener("click", () => {
            for (let item of director_set) {
                if (celebID === item.celebID) {
                    director_set.delete(item)
                    box.querySelector(".info img").hidden = true
                    box.querySelector(".info .name_role").hidden = true
                    box.querySelector(".cross_btn").hidden = true
                    box.style.height = "0px"
                    box.style.width = "0px"
                    box.style.padding = "0px"
                    box.style.margin = "0px"
                }
            }
        })
    })
    console.log(cast_set)
    console.log(director_set)
})





























// Movie Award Functionalities.
// Initially inserting the given awards in movie_award_set.
document.querySelectorAll(".awardInfoContainer .awardContainer").forEach(box => {
    const awardID = box.querySelector(".awardID").innerText
    const awardName = box.querySelector(".awardName").innerText
    const recieveDate = box.querySelector(".awardRecieveDate").innerText
    let data = { awardID, awardName, recieveDate }
    // console.log(data)
    movie_award_set.add(data)
})


// Adding Functionality to cross_btn.
document.querySelectorAll(".awardInfoContainer .awardContainer").forEach(box => {
    const awardID = box.querySelector(".id_name_date .awardID").innerText
    const awardName = box.querySelector(".id_name_date .awardName").innerText
    const recieveDate = box.querySelector(".id_name_date .awardRecieveDate").innerText

    box.querySelector(".cross_btn").addEventListener("click", () => {
        for (let item of movie_award_set) {
            if (awardID === item.awardID && recieveDate == item.recieveDate) {
                movie_award_set.delete(item)
                box.querySelector(".id_name_date .awardName").hidden = true
                box.querySelector(".id_name_date .awardRecieveDate").hidden = true
                box.querySelector(".cross_btn").hidden = true
                box.style.height = "0px"
                box.style.width = "0px"
                box.style.padding = "0px"
                box.style.margin = "0px"
            }
        }
    })
})



//adding functionalities to clicking on the award boxes.
document.querySelectorAll(".awardInfoUpdateContainer .awardUpdateContainer").forEach(box => {
    let awardID = box.querySelector(".awardUpdateInfo .awardID").innerText
    let awardName = box.querySelector(".awardUpdateInfo .awardName").innerText
    box.addEventListener("click", () => {
        document.querySelector(".awardInfoUpdateContainer .options .awardSelectedBox").innerHTML = `
        <div class = "awardSelectedInfo flex align justify">
            <div class = "awardID" hidden>${awardID}</div>
            <div class = "awardName">${awardName}</div>
        </div>
        `
    })
})


// adding functionality to add award button.
let a_equal = false
document.querySelector(".awardInfoUpdateContainer .options .addAwardBtn").addEventListener("click", () => {
    let awardID = document.querySelector(".awardInfoUpdateContainer .options .awardSelectedBox .awardSelectedInfo .awardID").innerText
    let awardName = document.querySelector(".awardInfoUpdateContainer .options .awardSelectedBox .awardSelectedInfo .awardName").innerText
    let recieveDate = document.querySelector(".awardInfoUpdateContainer .options .recieveDateBox input").value
    let awardData = { awardID, awardName, recieveDate }

    if (awardID != "" && awardName != "" && recieveDate != "") {
        for (const data of movie_award_set) {
            if (data.awardID == awardID && data.recieveDate == recieveDate) {
                a_equal = true
            }
        }
        if (a_equal == false) {
            movie_award_set.add(awardData)
        }
    }

    let content = ""
    for (let item of movie_award_set) {
        content +=
            `
        <div class="awardContainer flex align">
            <div class="awardInfo flex align">
                <div class="id_name_date">
                    <div class="awardID" hidden>${item.awardID}</div>
                    <div class="awardName">${item.awardName}</div>
                    <div class="awardRecieveDate">${item.recieveDate}</div>
                </div>
                <div class="cross_btn cursor"><img src="/images/icons/cross_icon.svg" alt=""></div>
            </div>
        </div>
        `
    }
    document.querySelector(".awardInfoContainer").innerHTML = content


    awardID = ""
    awardName = ""
    recieveDate = ""
    a_equal = false
    document.querySelector(".awardInfoUpdateContainer .options .awardSelectedBox").innerHTML = ""
    document.querySelector(".awardInfoUpdateContainer .options .recieveDateBox input").value = ""








    // Adding Functionality to cross_btn.
    document.querySelectorAll(".awardInfoContainer .awardContainer").forEach(box => {
        const awardID = box.querySelector(".id_name_date .awardID").innerText
        const awardName = box.querySelector(".id_name_date .awardName").innerText
        const recieveDate = box.querySelector(".id_name_date .awardRecieveDate").innerText

        box.querySelector(".cross_btn").addEventListener("click", () => {
            for (let item of movie_award_set) {
                if (awardID === item.awardID && recieveDate == item.recieveDate) {
                    movie_award_set.delete(item)
                    box.querySelector(".id_name_date .awardName").hidden = true
                    box.querySelector(".id_name_date .awardRecieveDate").hidden = true
                    box.querySelector(".cross_btn").hidden = true
                    box.style.height = "0px"
                    box.style.width = "0px"
                    box.style.padding = "0px"
                    box.style.margin = "0px"
                }
            }
        })
    })

})



















//// Update Button Functionalities.
document.querySelector(".updateBtn").addEventListener("click", async() => {
    const movieID = document.querySelector(".container1 .basicInfo .movieID").innerText
    const changed_movieTitle = document.querySelector(".basicInfoUpdateBox .moviesName input").value
    const changed_releaseDate = document.querySelector(".basicInfoUpdateBox .releaseDate input").value
    const changed_duration = document.querySelector(".basicInfoUpdateBox .duration input").value
    const changed_language = document.querySelector(".basicInfoUpdateBox .language input").value
    const changed_country = document.querySelector(".basicInfoUpdateBox .country input").value
    const changed_description = document.querySelector(".basicInfoUpdateBox .description textarea").value
    const changed_poster = document.querySelector(".basicInfoUpdateBox .poster input").files[0]
    const changed_coverPhoto = document.querySelector(".basicInfoUpdateBox .coverPhoto input").files[0]

    let movieData = {movieID,changed_movieTitle,changed_releaseDate,changed_duration,changed_language,changed_country,changed_description}

    let allData = new FormData()
    allData.append('movieData',JSON.stringify(movieData))
    allData.append('poster',changed_poster)
    allData.append('coverPhoto',changed_coverPhoto)
    allData.append('cast',JSON.stringify(Array.from(cast_set)))
    allData.append('director',JSON.stringify(Array.from(director_set)))
    allData.append('genre',JSON.stringify(Array.from(genre_set)))
    allData.append('movieAward',JSON.stringify(Array.from(movie_award_set)))


    let response = await fetch("/admin/updateMovie", {
        method: "POST",
        body: allData
    })
    let data = await response.json()
    console.log(data)
    window.location.href = data.redirectURL
})












// Delete Movie button functionalities.
document.querySelector(".container0 .deleteMovieButton").addEventListener("click", async() => {
    const movieID = document.querySelector(".container1 .basicInfo .movieID").innerText
    let response = await fetch("/admin/deleteMovie", {
        method: "POST",
        headers: {
        "Content-Type": "application/json"
    },
        body: JSON.stringify({movieID})
    })
    let data = await response.json()
    window.location.href = data.redirectURL
})