import axios, { AxiosResponse } from "axios";
import jwt_decode from "jwt-decode";

// TODO: un hard-code the URL string, obtain from elsewhere
const API_URL = "http://localhost:8080/";

interface BechamelAccessToken {
    exp: number,
    iat: number,
    nbf: number,
    userName: string
}

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

    private storeTokenIfGood(response : AxiosResponse) : boolean {
        if (response.status == 200 && response.data['access_token'] && response.data['refresh_token']) {
                this.storeTokens(response);
                return true;
        }
        return false;
    }

    async login(username: string, password: string) : Promise<string> {
        try {
            let loginResponse = await axios.post(API_URL + "login", { username, password });
            if (this.storeTokenIfGood(loginResponse)) {
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
        return "";
    }

    async refresh(refreshToken: string)  : Promise<string> {
        try {
            let loginResponse = await axios.post(API_URL + "login", { "refresh_token" : refreshToken });
            if (this.storeTokenIfGood(loginResponse)) {
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
        return "";
    }

    getCurrentUsername() : string {
        var accessToken = localStorage.getItem("bechamel_access_token");
        if (accessToken === "")
            return "";
        try {
            var decodedToken = accessToken ?
                jwt_decode<BechamelAccessToken>(accessToken) :
                <BechamelAccessToken>{ userName: "" };
            return decodedToken.userName
        } catch (error) {
            console.error(error);
            alert("getCurrentUsername ERROR: " + error);
            return "";
        }
    }

    logout() : boolean {
        localStorage.removeItem("bechamel_access_token");
        localStorage.removeItem("bechamel_refresh_token");
        return true;
    }
}

export default new AuthService();