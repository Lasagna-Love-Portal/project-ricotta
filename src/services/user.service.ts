import axios, { AxiosError, AxiosResponse } from 'axios';
import AuthService from './auth.service';
import authHeader from './auth-header';
import { ref } from 'yup';

// TODO: un hard-code the URL string, obtain from elsewhere
const API_URL = 'http://localhost:8080/';

class UserService {
    async getCurrentUserProfile() {
        try {
            let response = await axios.get(API_URL + 'profile', { headers: authHeader() });
            return response.data;
        } catch (error) {
            if (axios.isAxiosError(error)) {
                const axiosErr = error as AxiosError;
                if (axiosErr.response?.status == 401) {
                    let refreshToken = localStorage.getItem("bechamel_refresh_token");
                    if (refreshToken) {
                        console.info("HTTP 401 returned from GET /profile, attempting to re-login with refresh token.");
                        await AuthService.refresh(refreshToken);
                        // Need to handle error, ideal would be to call recursively... but having issues
                        let retryResponse = await axios.get(API_URL + 'profile', { headers: authHeader() });
                        return retryResponse.data;
                    }
                } else {
                    console.error(error);
                    alert("Error: " + error);
                }
            } else {
                console.error(error);
                alert("Error: " + error);
            }
        }
    }
}

export default new UserService();