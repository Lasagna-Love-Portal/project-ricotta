import axios, { AxiosResponse } from "axios";

// TODO: un hard-code the URL string, obtain from elsewhere
const API_URL = "http://localhost:8080/";

class AuthService {
    private storeTokens(loginResponse : AxiosResponse) {
        if (localStorage.getItem("bechamel_access_token"))
        {
            localStorage.removeItem("bechamel_access_token");
        }
        if (localStorage.getItem("bechamel_refresh_token"))
        {
            localStorage.removeItem("bechamel_refresh_token");
        }
        localStorage.setItem("bechamel_access_token", loginResponse.data['access_token']);
        localStorage.setItem("bechamel_refresh_token", loginResponse.data['refresh_token']);
    }

    async login(username: string, password: string) {
        try {
            let loginResponse = await axios.post(API_URL + "login", { username, password });
            if (loginResponse.status == 200 &&
                loginResponse.data['access_token'] &&
                loginResponse.data['refresh_token']) {
                    this.storeTokens(loginResponse);
                    return loginResponse.data['access_token'];
            }
            else if (loginResponse.status == 401) { // unauthorized
                console.error("Invalid username and password supplied.");
                alert("Invalid username and password supplied.");
            }
        } catch (error) {
            console.error(error);
            alert("Error: " + error);
        }
    }

    async refresh(refreshToken: string) {
        try {
            let loginResponse = await axios.post(API_URL + "login", { "refresh_token" : refreshToken });
            if (loginResponse.status == 200 &&
                loginResponse.data['access_token'] &&
                loginResponse.data['refresh_token']) {
                    this.storeTokens(loginResponse);
                    return loginResponse.data['access_token'];
            }
            else if (loginResponse.status == 401) { // unauthorized
                console.error("Refresh token not authorized, HTTP 401 returned");
                alert("Refresh token not authorized, HTTP 401 returned");
            }
        } catch (error) {
            console.error(error);
            alert("Error: " + error);
        }
    }

    logout() {
        localStorage.removeItem("bechamel_access_token");
        localStorage.removeItem("bechamel_refresh_token");
        alert("You have successfully logged out.")
    }
}

export default new AuthService();