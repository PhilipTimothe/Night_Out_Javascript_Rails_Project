class Link {

    static buttonContainer = document.getElementById("button-container");
    static addComment = document.getElementById("Add-comment-container");

    constructor(link) {
        this.link = link;
    }

    // Link to render an return to main page functionality, which will run on restaurant page
    static renderButton() {
        const bttn = document.createElement("BUTTON");
        bttn.className = "bttn";
        this.bttn = bttn;
        bttn.innerHTML = "Click here to return to Neighborhood page";
        const b = document.body.appendChild(bttn);
        this.buttonContainer.append(b);
    }

    // Link to render an add a comment, which should run after restaurant card is click/cloned
    static renderCommentButton() {
        const addComBtt = document.createElement("BUTTON");
        addComBtt.className = "addComBtt";
        this.addComBtt = addComBtt;
        addComBtt.innerHTML = "Add a Comment";
        const b = document.body.appendChild(addComBtt);
        this.addComment.append(b);
    }


}