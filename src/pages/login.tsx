import Image from "next/image";
import { Inter } from "next/font/google";
import React from "react";
import { Button } from '@mui/material'
import { useTheme } from "@mui/material/styles";
import styles from "@/styles/Welcome.module.css";
import { Formik, Field, Form, FormikHelpers } from "formik";
import AuthService from "@/services/auth.service";
const inter = Inter({ subsets: ["latin"] });

interface Values {
    username: string;
    password: string;
}

type State = {
    username: string,
    password: string,
    loading: boolean,
    message: string
  };

export default function Login() {
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
            <Formik
                initialValues={{
                    username: '',
                    password: ''
                }}
                onSubmit={(
                    values: Values,
                    { setSubmitting }: FormikHelpers<Values>
                ) => {
                    setTimeout(() => {
                        alert("Logging in...");
                        AuthService.login(values.username, values.password);
                        setSubmitting(false);
                        // TODO: redirect to a main page or similar
                        // this is a placeholder to show going somewhere
                        window.location.replace("/profile");
                    }, 500);
                }}
            >
                <Form>
                    <div>
                        <label htmlFor="username">Username</label>
                        <Field id="username" name="username" />
                    </div>
                    <div>
                        <label htmlFor="password">Password</label>
                        <Field id="password" name="password" type="password" />
                    </div>
                    <Button variant="contained" color="primary" type="submit">
                        Log in
                    </Button>
                </Form>
            </Formik>
        </main>
    )
}