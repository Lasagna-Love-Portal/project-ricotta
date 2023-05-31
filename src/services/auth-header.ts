export default function authHeader() {
    let userToken = localStorage.getItem("bechamel_access_token");
    if (localStorage.getItem("bechamel_access_token")) {
        return { Authorization: 'Bearer ' + userToken };
    } else {
        return { Authorization: '' };
    }
}