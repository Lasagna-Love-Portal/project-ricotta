import axios, { AxiosResponse } from "axios";
import jwt_decode from "jwt-decode";

// TODO: un hard-code the URL string, obtain from elsewhere
import {API_URL} from './url.service';

interface BechamelAccessToken {
    exp: number,
    iat: number,
    nbf: number,
    email: string
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

    async login(email: string, password: string) : Promise<string> {
        try {
            let loginResponse = await axios.post(API_URL + "login", { email, password });
            if (this.storeTokenIfGood(loginResponse)) {
                return loginResponse.data['access_token'];
            }
            else if (loginResponse.status == 401) { // unauthorized
                console.error("Invalid email and password supplied.");
                alert("Invalid email and password supplied.");
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

    getCurrentUserEmail() : string {
        var accessToken = localStorage.getItem("bechamel_access_token");
        if (accessToken === "")
            return "";
        try {
            var decodedToken = accessToken ?
                jwt_decode<BechamelAccessToken>(accessToken) :
                <BechamelAccessToken>{ email: "" };
            return decodedToken.email
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