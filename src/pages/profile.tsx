import Image from "next/image";
import { Inter } from "next/font/google";
import React from "react";
import { Button } from '@mui/material'
import { useTheme } from "@mui/material/styles";
import styles from "@/styles/Welcome.module.css";
import { Formik, Field, Form, FormikHelpers } from "formik";
import UserService from "@/services/user.service";
const inter = Inter({ subsets: ["latin"] });

export default function Profile() {
    const [data, setData] = React.useState(null);
    const [isLoading, setLoading] = React.useState(false);
    let statusString : string = "";

    React.useEffect(() => {
        setLoading(true);
        UserService.getCurrentUserProfile()
        .then((data) => {
            setData(data);
            setLoading(false);
        }, (error) => {
            alert("Profile fetch error: " + error);
            setLoading(false);
        });
    }, []);

    if (isLoading) statusString = "Loading..."
    if (!data) {
        statusString = "No profile data obtained."
    } else {
        statusString = "";
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
                <b>{data === null ? statusString :
                    "Current logged in user profile: " + JSON.stringify(data)}</b>
            </div>
        </main>
    );
}
