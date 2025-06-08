let celeb_award_set = new Set()
let movieID
let awardID
let awardName


// Initially adding celebAward into celeb_award_set
document.querySelectorAll(".awardInfoContainer .awardContainer").forEach(box => {
    const movieID = box.querySelector(".awardInfo .id_name_date .movieID").innerText
    const awardID = box.querySelector(".awardInfo .id_name_date .awardID").innerText
    const awardName = box.querySelector(".awardInfo .id_name_date .awardName").innerText
    const recieveDate = box.querySelector(".awardInfo .id_name_date .recieveDate").innerText
    const data = { movieID,awardID,awardName,recieveDate }
    celeb_award_set.add(data)
})



// Adding functionality to cross btn of award.
document.querySelectorAll(".awardInfoContainer .awardContainer").forEach(box => {
    const awardID = box.querySelector(".awardInfo .id_name_date .awardID").innerText
    const movieID = box.querySelector(".awardInfo .id_name_date .movieID").innerText
    const recieveDate = box.querySelector(".awardInfo .id_name_date .recieveDate").innerText

    box.querySelector(".awardInfo .cross_btn").addEventListener("click", () => {
        for (let item of celeb_award_set) {
            if (awardID === item.awardID && movieID == item.movieID && recieveDate == item.recieveDate) {
                celeb_award_set.delete(item)
                box.querySelector(".awardInfo .id_name_date .awardName").hidden = true
                box.querySelector(".awardInfo .cross_btn").hidden = true
                box.style.height = "0px"
                box.style.width = "0px"
                box.style.padding = "0px"
                box.style.margin = "0px"
            }
        }
    })
})




//Adding functionality to clicking on the movieShowBox.
document.querySelectorAll(".awardInfoUpdateContainer .movieBox .movieShowBox .movieInfo").forEach(box => {
    box.addEventListener("click", () => {
        let movieId = box.querySelector(".movieID").innerText
        let poster = box.querySelector("img").src
        let movieName = box.querySelector(".movieName").innerText
        document.querySelector(".awardInfoUpdateContainer .options .movieSelectedBox").innerHTML = `
        <div class="selectedMovieInfo flex align cursor">
            <div class="movieID" hidden>${movieId}</div>
            <img src="${poster}" alt="" width="50px">
            <div class="movieName">${movieName}</div>
        </div>
        `
        movieID = movieId
    })
})



//Adding Functionalities to clicking on the awardContainer.
document.querySelectorAll(".awardInfoUpdateContainer .awardUpdateContainer").forEach(box => {
    box.addEventListener("click", () => {
        let awardId = box.querySelector(".awardUpdateInfo .awardID").innerText
        let awardname = box.querySelector(".awardUpdateInfo .awardName").innerText

        document.querySelector(".options .awardSelectedBox").innerHTML = `
        <div class="selectedAwardInfo flex align justify">
            <div class="id_name_date">
                <div class="awardID" hidden>${awardId}</div>
                <div class="awardName">${awardname}</div>
            </div>
        </div>
        `

        awardID = awardId
        awardName = awardname
    })
})








// adding functionality to add award button.
let a_equal = false
document.querySelector(".awardInfoUpdateContainer .options .addAwardBtn").addEventListener("click", () => {
    // let movieID = document.querySelector(".awardInfoUpdateContainer .options .movieSelectedBox .selectedMovieInfo .movieID").innerText
    // let awardID = document.querySelector(".awardInfoUpdateContainer .options .awardSelectedBox .selectedAwardInfo .awardID").innerText
    // let awardName = document.querySelector(".awardInfoUpdateContainer .options .awardSelectedBox .selectedAwardInfo .awardName").innerText
    let recieveDate = document.querySelector(".awardInfoUpdateContainer .options .recieveDateBox input").value
    let awardData = {movieID, awardID, awardName, recieveDate }

    if (movieID != "" && awardID != "" && awardName != "" && recieveDate != "") {
        for (const data of celeb_award_set) {
            if (data.awardID == awardID && data.recieveDate == recieveDate && data.movieID == movieID) {
                a_equal = true
            }
        }
        if (a_equal == false) {
            celeb_award_set.add(awardData)
        }
    }

    let content = ""
    for (let item of celeb_award_set) {
        content +=
        `
        <div class="awardContainer flex align">
            <div class="awardInfo flex align">
                <div class="id_name_date">
                    <div class="movieID" hidden>${item.movieID}</div>
                    <div class="awardID" hidden>${item.awardID}</div>
                    <div class="awardName">${item.awardName}</div>
                    <div class="recieveDate">${item.recieveDate}</div>
                </div>
                <div class="cross_btn cursor"><img src="/images/icons/cross_icon.svg" alt=""></div>
            </div>
        </div>
        `
    }
    document.querySelector(".awardInfoContainer").innerHTML = content


    awardID = ""
    movieID = ""
    awardName = ""
    recieveDate = ""
    a_equal = false
    document.querySelector(".awardInfoUpdateContainer .options .awardSelectedBox").innerHTML = ""
    document.querySelector(".awardInfoUpdateContainer .options .movieSelectedBox").innerHTML = ""
    document.querySelector(".awardInfoUpdateContainer .options .recieveDateBox input").value = ""







    // Adding functionality to cross btn of award.
document.querySelectorAll(".awardInfoContainer .awardContainer").forEach(box => {
    const awardID = box.querySelector(".awardInfo .id_name_date .awardID").innerText
    const movieID = box.querySelector(".awardInfo .id_name_date .movieID").innerText
    const recieveDate = box.querySelector(".awardInfo .id_name_date .recieveDate").innerText

    box.querySelector(".awardInfo .cross_btn").addEventListener("click", () => {
        for (let item of celeb_award_set) {
            if (awardID === item.awardID && movieID == item.movieID && recieveDate == item.recieveDate) {
                celeb_award_set.delete(item)
                box.querySelector(".awardInfo .id_name_date .awardName").hidden = true
                box.querySelector(".awardInfo .cross_btn").hidden = true
                box.style.height = "0px"
                box.style.width = "0px"
                box.style.padding = "0px"
                box.style.margin = "0px"
            }
        }
    })
})
    

})


document.querySelector(".updateDiv .updateBtn").addEventListener("click", async() => {
    let celebID = document.querySelector(".container1 .basicInfo .celebID").innerText
    let changed_name = document.querySelector(".container1 .basicInfoUpdateBox .celebName input").value
    let changed_avatar = document.querySelector(".container1 .basicInfoUpdateBox .avatar input").files[0]
    let changed_bio = document.querySelector(".container1 .basicInfoUpdateBox .celebBio textarea").value
    let changed_country = document.querySelector(".container1 .basicInfoUpdateBox .country input").value
    let changed_gender = document.querySelector(".container1 .basicInfoUpdateBox .gender input").value

    let celebData = {celebID,changed_name,changed_bio,changed_country,changed_gender}

    let allData = new FormData()
    allData.append('celebData',JSON.stringify(celebData))
    allData.append('avatar',changed_avatar)
    allData.append('celebAward',JSON.stringify(Array.from(celeb_award_set)))


    let response = await fetch("/admin/updateCeleb", {
        method: "POST",
        body: allData
    })
    let data = await response.json()
    // console.log(data)
    window.location.href = data.redirectURL
})















// Delete Celeb button functionalities.
document.querySelector(".container0 .deleteCelebButton").addEventListener("click", async() => {
    const celebID = document.querySelector(".container1 .basicInfo .celebID").innerText
    let response = await fetch("/admin/deleteCeleb", {
        method: "POST",
        headers: {
        "Content-Type": "application/json"
    },
        body: JSON.stringify({celebID})
    })
    let data = await response.json()
    window.location.href = data.redirectURL
})
