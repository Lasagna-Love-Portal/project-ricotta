import axios from "axios";

// TODO: un hard-code the URL string, obtain from elsewhere
const API_URL = "http://localhost:8080/";

class AuthService {
    async login(username: string, password: string) {
        try {
            let loginResponse = await axios.post(API_URL + "login", { username, password });
            if (loginResponse.status == 200 && loginResponse.data['token']) {
                if (localStorage.getItem("userToken"))
                {
                    localStorage.removeItem("userToken");
                }
                localStorage.setItem("userToken", loginResponse.data['token']);
                return loginResponse.data['token'];
            }
            else {
                alert("Returned status: " + loginResponse.status + "\n" +
                    "Returned data: " + JSON.stringify(loginResponse.data));
            }
        } catch (error) {
            console.error(error);
            alert("Error: " + error);
        }
    }

    logout() {
        localStorage.removeItem("userToken");
    }

    getCurrentUser() {
        return localStorage.getItem("userToken");
    }
}

export default new AuthService();