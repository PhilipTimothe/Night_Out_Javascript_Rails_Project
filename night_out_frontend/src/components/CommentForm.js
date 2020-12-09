class CommentForm {

    static container = document.getElementById("form-container");

    constructor(id) {
        this.restaurantId = id
        this.render();
        this.attachEventLister();
    }

    attachEventLister() {
        this.form.addEventListener("submit", this.processOnSubmit);
    }

    processOnSubmit = (event) => {
        event.preventDefault();
        const { title, comments, rating } = event.target;
        const data = {
            title: title.value,
            comments: comments.value,
            rating: rating.value,
            restaurant_id: this.restaurantId,
        };
        api.createComment(data).then((comment) => new Comment(comment));
        // Comment.getAllScoped(this.restaurantId);
        this.constructor.container.innerHTML = ""; 
    };

    render() {
        this.constructor.container.innerHTML = "";  
        const form = document.createElement("form");
        form.className = "comment-form";
        form.id = "comment-form-id"
        form.innerHTML = this.renderInnerHTML();
        this.form = form;
        this.constructor.container.append(form);
    }

    renderInnerHTML = () => {
        return `
        <h3>Leave A Comment</h3>
        <input
            type="text"
            name="title"
            value=""
            placeholder="Enter a title..."
            class="comment-title"
        />
        <br />
        <textarea
            placeholder="Leave your comment here..."
            name="comments"
            value=""
            class="comment-box"
            form="comment-form-id"></textarea>
        <br />
        <label for="comment"><p>Select a star rating for this Restaurant</p></label>
        <select name="rating" id="rating" class="num-option" form="comment-form-id">
            <option value="1">1 star</option>
            <option value="2">2 stars</option>
            <option value="3">3 stars</option>
            <option value="4">4 stars</option>
            <option value="5">5 stars</option>
        </select>
        <br />
        <input
            type="submit"
            name="submit"
            value="Post Comment"
            class="bttn"
        />
        `;
    };
}

// <input value="1" type="hidden" name="repair[vehicle_id]" id="repair_vehicle_id"> 
// <%= f.hidden_field :vehicle_id, value: @vehicle.id %>
