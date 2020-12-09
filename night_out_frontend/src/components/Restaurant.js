class Restaurant {

    static container = document.getElementById("restaurant-container");
    static showContainer = document.getElementById("show-container");
    

    constructor(restaurant){
        this.restaurant = restaurant;
        this.renderRestaurant();
        this.attachEventListener();
    }

    static getAllScoped(id) {
        api.getScopedRestaurants(id).then((data) =>
            data.forEach((restaurant) => new Restaurant(restaurant))
        );
    }

    attachEventListener() {
        this.card.addEventListener("click", this.processOnClick);
    }

    processOnClick = (event) => {
        if (event.target.className === "text" || event.target.className === "restaurant-avatar") {
            const id = this.card.dataset.id;
            const tab = this.card;
            const instTab = document.getElementById("instruction-container");
            instTab.innerHTML = "";

            // HTML DOM cloneNode() Method
            const clone = tab.cloneNode(true);
            this.constructor.showContainer.appendChild(clone); 
            Comment.getAllScoped(id);
            Link.renderCommentButton();

            this.renderCommentForm(clone.dataset.id);
            let tabs = this.constructor.container;
            tabs.innerHTML = "";
        }
    };

    renderCommentForm (id) {
        let addComment = document.getElementById("Add-comment-container");
        addComment.addEventListener("click", () => {
            new CommentForm(id);
            addComment.innerHTML = ""

        });
    }

    renderRestaurant() {
        const card = document.createElement("div");
        card.className = "card";
        card.dataset.id = this.restaurant.id;
        this.card = card;
        this.renderInnerHTML();
        this.constructor.container.append(card);
    }
    
    //onClick => new CommentForm(this.restaurant.id)

    renderInnerHTML() {
        const { name , cuisine , style , phone_number , menu , address , image } = this.restaurant;
        this.card.innerHTML = `
            <h2 class="restaurant-name">${name}</h2>
            <img src="${image}" class="restaurant-avatar"/>
            <p class="text"> Cusine: ${cuisine}</p>
            <p class="text"> Style: ${style}</p>
            <p class="text"> 📍 Address: ${address}</p>
            <p class="text"> 📞 Phone Number: ${phone_number}</p>
            <a href="${menu}" target="_blank"> 📖  Menu (Click Here!) </a>
            
        `;
    }

}

// {/* <button class="form-button" > Add A Comment </button> */}