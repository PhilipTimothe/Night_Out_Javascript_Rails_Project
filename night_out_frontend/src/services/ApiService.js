class ApiService {
    constructor(baseURL){
        this.baseURL = baseURL;
    }

    getAllLocations = () => fetch(`${this.baseURL}/locations`).then(response => response.json());

    getScopedRestaurants = (id) => fetch(`${this.baseURL}/restaurants/${id}`).then(response => response.json());

    getScopedComments = (id) => fetch(`${this.baseURL}/restaurants/${id}/comments`).then(response => response.json());

    createComment = (data) => {
        const config = {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "Accept": "application/json",
            },
            body: JSON.stringify(data),
        };
        return fetch(`${this.baseURL}/restaurants/${data.restaurant_id}/comments`, config).then(response => response.json());
    }

}