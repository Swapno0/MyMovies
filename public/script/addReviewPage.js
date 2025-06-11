// Adding functionality to stars.
document.querySelectorAll(".starRating").forEach(star => {
    let num = star.querySelector(".number").innerText
    star.addEventListener("click",() => {
        document.querySelector(".givenRating").innerText = num
    })
})


// Adding functionality to add button.
document.querySelector(".addBtn").addEventListener("click",async(req,res) => {
    let movieID = document.querySelector(".movieID").innerText
    let userName = document.querySelector(".userName").innerText
    let rating = document.querySelector(".givenRating").innerText
    let heading = document.querySelector(".reviewContainer .heading").value
    let content = document.querySelector(".reviewContainer .content").value
    let response = await fetch("/movie/addReview", {
            method: "POST",
            headers:
            {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({ movieID, userName,rating,heading,content })
        })
    let data = await response.json()
    window.location.href = `${data.redirectURL}`
})