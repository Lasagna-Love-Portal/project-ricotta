import Image from "next/image";
import { Inter } from "next/font/google";
import React from "react";
import { Formik, Field, Form, FormikHelpers } from "formik";
import AuthService from "@/services/auth.service";
const inter = Inter({ subsets: ["latin"] });

interface Values {
    email: string;
    password: string;
}

export default function Login() {
    return (
        <main className="flex min-h-full flex-1 flex-col justify-center text-center px-6 py-12 lg:px-8">
            <header className="sm:mx-auto sm:w-full sm:max-w-sm">
                <Image
                    src={"logo-vrt1.png"}
                    alt="Lasagna Love logo"
                    width={90}
                    height={79}
                    className="mx-auto w-auto"
                />
            </header>

            <h2 className="mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">
                Sign in to your Lasagna Love account
            </h2>
            
            <div className="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
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
                    <div className="mb-2">
                        <label htmlFor="email" className="block text-sm text-left font-medium leading-6 text-gray-900">
                            Email address
                        </label>
                        <div className="mt-2">
                        <Field 
                            id="email"
                            name="email"
                            type="email"
                            autoComplete="email"
                            required
                            className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                        </div>
                    </div>
                    
                    
                    <div className="mb-4">
                        <div className="flex items-center justify-between">
                        <label htmlFor="password" className="block text-sm font-medium leading-6 text-gray-900">
                            Password
                        </label>
                        <div className="text-sm">
                            <a href="#" className="font-semibold text-indigo-600 hover:text-indigo-500">
                                Forgot password?
                            </a>
                        </div>
                    </div>
                        <div className="mt-2">
                        <Field 
                            id="password" 
                            name="password" 
                            type="password"
                            className="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            />
                        </div>
                    </div>

                    <div className="text-white">
                    <button
                        type="submit"
                        className="flex w-full justify-center rounded-md bg-llorange-500 px-3 py-1.5 text-sm font-semibold leading-6 text-gray-100 shadow-sm hover:bg-llorange-600 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-llorange-600"
                        >
                        Sign in
                    </button>
                    </div>
                </Form>
            </Formik>
            </div>
        </main>
    )
}