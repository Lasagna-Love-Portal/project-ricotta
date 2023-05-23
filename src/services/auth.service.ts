import axios from "axios";

const API_URL = "http://localhost:8080/";

class AuthService {
    login(username: string, password: string) {
        alert(username + ' ' + password);
        axios.post(API_URL + "login", { username, password })
        .then((response) => {
            if (response.status == 200 && response.data['token']) {
                alert ("Token data: " + response.data['token']);
                localStorage.setItem("userToken", JSON.stringify(response.data['token']));
                return response.data['token'];
            }
            else {
                alert("Returned status: " + response.status + "\n" +
                    "Returned data: " + JSON.stringify(response.data));
            }
        }, (error) => {
            console.error(error);
            alert("Error: " + error);
        });
    }

    logout() {
        localStorage.removeItem("userToken");
    }

    getCurrentUser() {
        return localStorage.getItem("userToken");
    }
}

export default new AuthService();