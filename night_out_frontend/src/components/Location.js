class Location {

    static container = document.getElementById("location-container");

    constructor(location){
        this.location = location;
        this.renderLocation();
        this.attachEventListener();
    }

    static getAll() {
        api.getAllLocations().then((data) =>
            data.forEach((location) => new Location(location))
        );
    }

    attachEventListener() {
        this.tab.addEventListener("click", this.processOnClick);
    }

    processOnClick = (event) => {
        if (event.target.className == "location-avatar") {
            Link.renderButton();
            const id = this.tab.dataset.id;
            Restaurant.getAllScoped(id);
            this.constructor.container.innerHTML = "";
        }
    };

    renderLocation() {
        const tab = document.createElement("div");
        tab.className = "tab";
        tab.dataset.id = this.location.id;
        this.tab = tab;
        this.renderInnerHTML();
        this.constructor.container.append(tab);
    }

    renderInnerHTML() {
        const { neighborhood, image } = this.location;
        this.tab.innerHTML = `
            <img src="${image}" class="location-avatar"/>
            <p>${neighborhood}</p>
        `;
    }

}