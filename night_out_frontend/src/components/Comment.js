class Comment {

    static container = document.getElementById("comment-container");

    constructor(comment){
        this.comment = comment;
        this.renderComment();
    }

    static getAllScoped(id) {
        api.getScopedComments(id).then((data) =>
            data.forEach((comment) => new Comment(comment))
        );
    }

    renderComment() {
        const box = document.createElement("div");
        box.className = "box";
        box.dataset.id = this.comment.id;
        this.box = box;
        this.renderInnerHTML();
        this.constructor.container.append(box);
    }

    renderInnerHTML() {
        const { title , comments , rating } = this.comment;
        // Star rating Implementation
        const starTotal = 5
        const starPercentage = (rating/starTotal) * 100
        const starRounded = `${Math.round(starPercentage/10) * 10}%`

        this.box.innerHTML = `
            <h3 class="comment">${title}</h3>
            <p class="comment"> Comment: ${comments}</p>
            <p class="comment"> Rating: ${rating}</p>
            <div class="star-outer">
                <div class="star-inner" style="width: ${starRounded}"></div>
            </div>
        `;
    }



}