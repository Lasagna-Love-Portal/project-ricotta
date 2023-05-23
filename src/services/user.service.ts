import axios from 'axios';
import authHeader from './auth-header';

const API_URL = 'http://localhost:8080/';

class UserService {
    getCurrentUserProfile() {
        return axios.get(API_URL + 'profile', { headers: authHeader() });
    }
}

export default new UserService();