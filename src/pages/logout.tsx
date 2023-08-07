import Image from "next/image";
import { Inter } from "next/font/google";
import React from "react";
import { useTheme } from "@mui/material/styles";
import styles from "@/styles/Welcome.module.css";
import AuthService from "@/services/auth.service";
import  { Redirect } from 'react-router-dom';
const inter = Inter({ subsets: ["latin"] });

export default function Profile() {
    const [didLogout, setLoggedOut] = React.useState(false);
    let statusString : string = "";

    React.useEffect(() => {
        if (AuthService.logout()) {
            setLoggedOut(true);
        }
    }, []);
    if (didLogout) {
        statusString = "Logged out"; 
        window.location.replace("/login");
    } else {
        statusString = "Error logging out";
    }
    const theme = useTheme();

    return (
        <main className={styles["welcome-screen"]}>
            <header className={styles["welcome-header"]}>
                <Image
                    src={"logo-vrt1.png"}
                    alt="Lasagna Love logo"
                    width={90}
                    height={79}
                    className="logo"
                />
            </header>
            <div>
                <b>{statusString}</b>
            </div>
        </main>
    );
}
