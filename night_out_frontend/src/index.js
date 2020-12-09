
const api = new ApiService("http://localhost:3000/api/v1");

document.addEventListener("DOMContentLoaded", () => {

    Location.getAll();

    const instTab = document.getElementById("instruction-container");
    instTab.innerHTML = `<p>Choose a Neighborhood</p>`

    // If a location tab is click, render a return button 
    const tabBtn = document.getElementById("location-container");
    tabBtn.addEventListener("click", () => {
            instTab.innerHTML = `<p>Select a Restaurant below, or</p>`;
    });
        
    // If return link is clicked, clear code and call location method 
    const buttonContainer = document.getElementById("button-container");
    buttonContainer.addEventListener("click", () => {
        let cards = document.getElementById("restaurant-container")
        let cloneCard = document.getElementById("show-container")
        let comment = document.getElementById("comment-container")
        let commentForm = document.getElementById("form-container")
        cards.innerHTML = "";
        cloneCard.innerHTML = "";
        comment.innerHTML = "";
        commentForm.innerHTML = "";
        buttonContainer.innerHTML = "";
        instTab.innerHTML = `<p>Choose a Neighborhood</p>`
        Location.getAll();
    });
});

// window.location.reload(true);

