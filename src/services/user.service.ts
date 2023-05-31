import axios from 'axios';
import authHeader from './auth-header';

// TODO: un hard-code the URL string, obtain from elsewhere
const API_URL = 'http://localhost:8080/';

class UserService {
    async getCurrentUserProfile() {
        try {
            let response = await axios.get(API_URL + 'profile', { headers: authHeader() });
            return response.data;
        } catch (error) {
            console.error(error);
            alert("Error: " + error);
        }
    }
}

export default new UserService();