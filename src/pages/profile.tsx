import Image from "next/image";
import { Inter } from "next/font/google";
import React from "react";
import { Button } from '@mui/material'
import { useTheme } from "@mui/material/styles";
import styles from "@/styles/Welcome.module.css";
import { Formik, Field, Form, FormikHelpers } from "formik";
import AuthService from "@/services/auth.service";
const inter = Inter({ subsets: ["latin"] });

export default function Profile() {
    const theme = useTheme();
    const userToken = AuthService.getCurrentUser();
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
                <b>{userToken}</b>
            </div>
        </main>
    )
}