import React from "react";
import Image from "next/image";
import { Lato } from "next/font/google";
// import styles from "@/styles/Welcome.module.css";
import { Formik, Form, useField, useFormikContext } from "formik";
import { useFormik } from "formik";
import AuthService from "@/services/auth.service";

const lato = Lato({
  subsets: ['latin'],
  weight: ['400', '700'],
  variable: '--font-lato',
})
interface Values {
  firstName: string;
  lastName: string;
  email: string;
  acceptedTerms: boolean;
  jobType: string;
}

interface TextInputProps {
  label: string;
  name: string;
  type: string;
  placeholder: string;
}

const TextInput: React.FC<TextInputProps> = ({ label, ...props }) => {
  // useField() returns [formik.getFieldProps(), formik.getFieldMeta()]
  // which we can spread on <input> and alse replace ErrorMessage entirely.
  const [field, meta] = useField(props);
  return (
    <>
      <label htmlFor={props.name}>{label}</label>
      <input className="text-input" {...field} {...props} />
      {meta.touched && meta.error ? (
        <div className="error">{meta.error}</div>
      ) : null}
    </>
  );
};

interface SelectProps {
  label: string;
  name: string;
  children: React.ReactNode;
}


const Select: React.FC<SelectProps> = ({ label, ...props }) => {
  // useField() returns [formik.getFieldProps(), formik.getFieldMeta()]
  // which we can spread on <input> and alse replace ErrorMessage entirely.
  const [field, meta] = useField(props);
  return (
    <>
      <label htmlFor={props.name}>{label}</label>
      <div {...field} {...props} />
      {meta.touched && meta.error ? (
        <div>{meta.error}</div>
      ) : null}
    </>
  );
};

export default function SignUp() {
  // const formik = useFormik({
  //   initialValues: {
  //     firstName: '',
  //     lastName: '',
  //     email: '',
  //     name: '',
  //   },
    
  //   onSubmit: values => {
  //     alert(JSON.stringify(values, null, 2));
  //   },
  // });
  return (
    <main className={`${lato.variable} font-body`}>
      <header>
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
          firstName: "",
          lastName: "",
          email: "",
          acceptedTerms: false, // added for our checkbox
          jobType: "" // added for our select
        }}

        onSubmit={async (values:Values, { setSubmitting }) => {
          await new Promise(r => setTimeout(r, 500));
          setSubmitting(false);
        }}
      >
        <Form>
          <TextInput
            label="First Name"
            name="firstName"
            type="text"
            placeholder="First Name"
          />
          <TextInput
            label="Last Name"
            name="lastName"
            type="text"
            placeholder="Last Name"
          />
          <TextInput
            label="Email Address"
            name="email"
            type="email"
            placeholder="Email"
          />
          <Select label="Select Country" name="country">
            <option value="designer">Australia</option>
            <option value="development">Canada</option>
            <option value="United Kingdom">United Kingdom</option>
            <option value="United States">United States</option>
          </Select>
      
          <button type="submit">Submit</button>
        </Form>
      </Formik>
    </main>
  )
}
