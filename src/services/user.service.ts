import axios, { AxiosError, AxiosResponse } from 'axios';
import AuthService from './auth.service';
import authHeader from './auth-header';
import { Attestations } from '@/model/Attestations';
import { VolunteerInfo } from '@/model/VolunteerInfo';
import { RecipientInfo } from '@/model/RecipientInfo';
import { Profile } from '@/model/Profile';

// TODO: un hard-code the URL string, obtain from elsewhere
const API_URL = 'http://localhost:8080/';

class UserService {
    async getCurrentUserProfile() : Promise<Profile> {
        try {
            let response = await axios.get(API_URL + 'profile', { headers: authHeader() });
            let userProfile : Profile = response.data;
            return userProfile;
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
                        let userProfile : Profile = retryResponse.data;
                        return userProfile;
                    }
                } else {
                    console.error(error);
                    alert("Error: " + error);
                }
            } else {
                console.error(error);
                alert("Error: " + error);
            }
            return new Promise<Profile>(resolve => { });
        }
    }
}

export default new UserService();