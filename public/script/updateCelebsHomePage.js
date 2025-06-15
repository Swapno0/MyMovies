// Adding functionality to search box.
document.querySelector(".searchBox input").addEventListener("input", function() {
    let input = this.value
    for(celeb of document.querySelectorAll(".wrapper"))
    {
        if (celeb.querySelector(".castName").innerText.toLowerCase().includes(input.toLowerCase())) {
            celeb.style.display = ""
        }
        else
        {
            celeb.style.display = "none"
        }
    }
})