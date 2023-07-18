import React, { useState } from "react";
import Image from "next/image";
import { Lato } from "next/font/google";
// import styles from "@/styles/Welcome.module.css";
import { Formik, Form, useField, useFormikContext } from "formik";
import { useFormik } from "formik";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css"
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
  dob: Date | undefined;
  address: string;
  country: string;
  city: string;
  state: string;
  postal: string;
  phone: string;
  confirmEmail: string;
  acceptedTerms: boolean;
  jobType: string;
  password: string;
}

interface TextInputProps {
  label: string;
  name: string;
  type: string;
  placeholder: string;
  // address: string;
}

const TextInput: React.FC<TextInputProps> = ({ label, name, ...props }) => {
  // useField() returns [formik.getFieldProps(), formik.getFieldMeta()]
  // which we can spread on <input> and alse replace ErrorMessage entirely.
  const [field, meta] = useField(name);
  return (
    <>
      <label htmlFor={name}>{label}</label>
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

const Select: React.FC<SelectProps> = ({ label, name, children, ...props }) => {
  // useField() returns [formik.getFieldProps(), formik.getFieldMeta()]
  // which we can spread on <input> and alse replace ErrorMessage entirely.
  const [field, meta] = useField(name);

  return (
    <>
      <label htmlFor={name}>{label}</label>
      <select {...field} {...props}>{children}</select>
      {/* <div {...field} {...props} /> */}
      {meta.touched && meta.error ? (
        <div>{meta.error}</div>
      ) : null}
    </>
  );
};

interface MyDatePickerProps {
  name: string;
}

const MyDatePicker: React.FC<MyDatePickerProps> = ({name}) => {
  const [field, meta, helper] = useField(name);

  return (
    <>
      <DatePicker
        selected={field.value}
        onChange={date => helper.setValue(date)}
        maxDate={new Date()} //minimum selectable date is today
        placeholderText="Select a date"
      />
    </>
  );
}

export default function SignUp() {
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
          dob: undefined,
          address: "",
          city: "",
          state: "",
          postal: "",
          country: "",
          phone: "",
          confirmEmail: "",
          acceptedTerms: false, // added for our checkbox
          jobType: "", // added for our select
          password: "",
        }}

        onSubmit={async (values:Values, { setSubmitting }) => {
          await new Promise(r => setTimeout(r, 500));
          setSubmitting(false);
          console.log('submitting', {values})
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
            <option value="Australia">Australia</option>
            <option value="Canada">Canada</option>
            <option value="United Kingdom">United Kingdom</option>
            <option value="United States">United States</option>
          </Select>
          <label>Date of Birth</label>
          <MyDatePicker name="dob"/>
          <TextInput
            label="Address"
            name="address"
            type="text"
            placeholder=""
          />
          <TextInput
            label="City"
            name="city"
            type="text"
            placeholder="City"
          />   
          <TextInput
            label="State"
            name="state"
            type="text"
            placeholder=""
          />
          <TextInput
            label="Postal/Zip code"
            name="postal"
            type="text"
            placeholder=""
          />
          <TextInput
            label="Phone"
            name="phone"
            type="text"
            placeholder=""
          />
          <Select label="Ok to text mobible phone" name="text">
            <option value="yes">Yes</option>
            <option value="no">No</option>
          </Select>
          <TextInput
            label="Confirm Email"
            name="confirmEmail"
            type="text"
            placeholder=""
          /> 
          <TextInput
            label="Password"
            name="password"
            type="text"
            placeholder=""
          />            
          <button type="submit">Submit</button>
        </Form>
      </Formik>
    </main>
  )
}
