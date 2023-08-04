import React, { useState } from "react";
import Image from "next/image";
import { Lato } from "next/font/google";
// import styles from "@/styles/Welcome.module.css";
import { Formik, Form, useField, useFormikContext } from "formik";
import { useFormik } from "formik";
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css"

// const lato = Lato({
//   subsets: ['latin'],
//   weight: ['400', '700'],
//   variable: '--font-lato',
// })

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
  hear: string | undefined;
  newsletter: 'yes' | 'no';
}

interface TextInputProps {
  label: string;
  name: string;
  type?: string;
  placeholder: string;
  rows?: number;
}

interface RadioProps {
  label: string;
  name: string;
  defaultChecked: boolean;
  children: React.ReactNode;
  value: 'yes' | 'no';
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

// const MyCheckbox: React.FC<CheckboxProps> = ({ children, ...props }) => {
//   const [field, meta] = useField({ ...props, type: "checkbox" });
//   return (
//     <>
//       <label className="checkbox">
//         <input {...field} {...props} type="checkbox" />
//         {children}
//       </label>
//       {meta.touched && meta.error ? (
//         <div className="error">{meta.error}</div>
//       ) : null}
//     </>
//   );
// };

const MyRadio: React.FC<RadioProps> = ({ children, value, ...props }) => {
  const [field, meta] = useField({ ...props, type: "radio" });
  return (
    <>
      <label className="checkbox">
        <input {...field} {...props} type="radio" value={value} />
        {children}
      </label>
      {meta.touched && meta.error ? (
        <div className="error">{meta.error}</div>
      ) : null}
    </>
  );
};


const MyTextArea: React.FC<TextInputProps> = ({label, ...props}) => {
  // useField() returns [formik.getFieldProps(), formik.getFieldMeta()]
  // which we can spread on <input> and alse replace ErrorMessage entirely.
  const [field, meta] = useField(props);
  return (
      <>
          {/* <label htmlFor={props.id || props.name}>{label}</label> */}
          <textarea className="text-area" {...field} {...props} />
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
  // const details = useFieldValue(formik, 'hear');
  return (
    <main className="flex flex-col justify-center flex-1 min-h-full px-6 py-12 text-center font-body lg:px-8">
      <header className="sm:mx-auto sm:w-full sm:max-w-sm">
        <Image
            src={"signup.png"}
            alt="Sign Up"
            width={146}
            height={70}
            className="w-auto mx-auto mb-10"
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
          acceptedTerms: true, // added for our checkbox
          newsletter: 'yes',
          jobType: "", // added for our select
          password: "",
          defaultChecked: true,
          hear: undefined,
        }}

        onSubmit={async (values:Values, { setSubmitting }) => {
          await new Promise(r => setTimeout(r, 500));
          setSubmitting(false);
          console.log('submitting', {values})
        }}
      >
        {props => (
          <Form className="font-body">
            <div className="grid grid-cols-1 mt-10 gap-x-6 gap-y-8 sm:grid-cols-6">
              <TextInput 
                label="First Name"
                name="firstName"
                type="text"
                placeholder="First Name"
              />
            </div> 
            <div className="sm:col-span-3">
              {/* className="block text-sm font-medium leading-6 text-gray-900" */}
              <TextInput 
                label="Last Name"
                name="lastName"
                type="text"
                placeholder="Last Name"
              />
            </div>
            <div className="sm:col-span-4">
              <TextInput
                label="Email Address"
                name="email"
                type="email"
                placeholder="Email"
              />
            </div>
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
            <Select label="How did you hear about us?" name="hear">
              <option value="aarp">AARP</option>
              <option value="college">College/University</option>
              <option value="dole">Elizabeth Dole Foundation</option>
              <option value="facebook">Facebook</option>
              <option value="foster">Foster App</option>
              <option value="girl scouts">Girl Scouts</option>
              <option value="GivePulse">GivePulse</option>
              <option value="happyly">Happyly</option>
              <option value="GivePulse">GivePulse</option>
              <option value="Idealist">Idealist</option> 
              <option value="influencer">influencer/YouTube Channel</option>
              <option value="Instagram">Instagram</option> 
              <option value="JustServe">JustServe</option>
              <option value="Knit-a-thon">Knit-a-thon</option>
              <option value="March of Dimes">March of Dimes</option>
              <option value="On the News">On the News</option>
              <option value="Oracle Women's Leadership">Oracle Women’s Leadership</option>
              <option value="podcast">Podcast</option>
              <option value="Point App">Point App</option>
              <option value="U.S. Bank">U.S. Bank Virtual Development Network</option>
              <option value="VolunteerMatch">VolunteerMatch</option>
              <option value="Word of Mouth">Word of Mouth</option>
              <option value="other">Other</option>
            </Select>
            {(props.values.hear === 'college' || props.values.hear === 'influencer' || props.values.hear === 'podcast' || props.values.hear === 'other') && (
                <section>
                  <MyTextArea
                    label="Provide more details (Optional)"
                    name="details"
                    rows={6}
                    placeholder=""
                  />
                </section>
              )}
            <label>Do you want to receive the Lasagna Love newsletter?</label>
              <MyRadio 
                label="yes" 
                name="newsletter"
                value={'yes'}
                defaultChecked={props.values.country === "United States" || props.values.country === "Canada"}>
              Yes
              </MyRadio>
              <MyRadio 
                label="no" 
                name="newsletter"
                value={'no'}
                defaultChecked={props.values.country !== "United States" && props.values.country !== "Canada"}>
              No
              </MyRadio>           
            <button className="rounded-md bg-llorange-500 px-3 py-1.5 text-sm font-semibold leading-6 text-gray-100 shadow-sm hover:bg-llorange-600 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-llorange-600" type="submit">Submit</button>
          </Form>
        )}
      </Formik>
    </main>
  )
}
