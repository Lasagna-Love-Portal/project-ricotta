export default function authHeader() {
    const userToken = localStorage.getItem("userToken");
    if (userToken) {
        return { Authorization: 'Bearer ' + userToken };
    } else {
        return { Authorization: '' };
    }
}