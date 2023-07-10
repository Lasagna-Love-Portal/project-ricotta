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
    email: string;
    password: string;
}

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
                    email: '',
                    password: ''
                }}
                onSubmit={ async (
                    values: Values,
                    { setSubmitting }: FormikHelpers<Values>
                ) => {
                    await AuthService.login(values.email, values.password);
                    // TODO: better handle login errors
                    window.location.replace("/landing");
                }}
            >
                <Form>
                    <div>
                        <label htmlFor="email">Email address</label>
                        <Field id="email" name="email" />
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