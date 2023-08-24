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

interface ErrorWrapperProps {
  touched: boolean;
  error?: string;
  children: React.ReactNode;
}

interface TextInputProps {
  label: string;
  name: string;
  type?: string;
  placeholder: string;
  rows?: number;
  className: string;
}

interface RadioProps {
  label: string;
  name: string;
  children: React.ReactNode;
  value: 'yes' | 'no';
}

const ErrorWrapper: React.FC<ErrorWrapperProps> = ({touched, error, children}) => {
  return (
    <>
      {children}
      {touched && error ? (
        <div className="error">{error}</div>
      ) : null}
    </>
  )
};

const TextInput: React.FC<TextInputProps> = ({ label, name, ...props }) => {
  // useField() returns [formik.getFieldProps(), formik.getFieldMeta()]
  // which we can spread on <input> and alse replace ErrorMessage entirely.
  const [field, meta] = useField(name);
  return (
    <ErrorWrapper touched={meta.touched} error={meta.error}>
      <label htmlFor={name}>{label}</label>
      <input {...field} {...props} />
    </ErrorWrapper>
  );
};

const MyTextArea: React.FC<TextInputProps> = ({label, ...props}) => {
  // useField() returns [formik.getFieldProps(), formik.getFieldMeta()]
  // which we can spread on <input> and alse replace ErrorMessage entirely.
  const [field, meta] = useField(props);
  return (
    <ErrorWrapper touched={meta.touched} error={meta.error}>
        <textarea {...field} {...props} />
    </ErrorWrapper>
  );
};

const MyRadio: React.FC<RadioProps> = ({ children, name, value, ...props }) => {
  const [field, meta] = useField({ name, value, type: "radio" });
  return (
    <ErrorWrapper touched={meta.touched} error={meta.error}>
      <label className="checkbox">
        <input {...field} {...props} type="radio" />
        {children}
      </label>
    </ErrorWrapper>
  );
};

interface SelectProps {
  label: string;
  name: string;
  children: React.ReactNode;
  className: string;
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

const CountrySelect: React.FC<SelectProps> = ({ label, name, children, ...props }) => {
  const [field, meta] = useField(name);
  const { setFieldValue } = useFormikContext();

  const onChange = (e: React.ChangeEvent<HTMLSelectElement>)  => {
    const {value} = e.target;
    const newletter = value === "United States" || value === "Canada" ? 'yes' : 'no';
    setFieldValue('newsletter', newletter);
    field.onChange(e);
  }

  return (
    <>
      <label htmlFor={name}>{label}</label>
      <select {...field} {...props} onChange={onChange}>{children}</select>
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
    <div className="mx-auto flex justify-center">
      <DatePicker
        selected={field.value}
        onChange={date => helper.setValue(date)}
        maxDate={new Date()} //minimum selectable date is today
        placeholderText="Select a date"
        className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
      />
    </div>
  );
}

export default function SignUp() {

  const [newsletter, getNewsletter] = useState(true);

  const handleChange = () => {
    getNewsletter(current => !current);
  };

  return (
    <main className="font-body">
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
          newsletter: 'no',
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
          <Form className="w-full max-w-lg mx-auto font-body">
            <div className="flex flex-wrap -mx-3 mb-1">
              <div className="w-1/2 px-3 mb-1">
                <TextInput 
                  className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                  label="First Name"
                  name="firstName"
                  type="text"
                  placeholder="First Name"
                />
              </div> 
              <div className="w-1/2 px-3 mb-1">
                {/* className="block text-sm font-medium leading-6 text-gray-900" */}
                <TextInput 
                  className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                  label="Last Name"
                  name="lastName"
                  type="text"
                  placeholder="Last Name"
                />
              </div>
            </div>
            <div className="w-3/5 px-3 mx-auto">
              <TextInput
                className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                label="Email Address"
                name="email"
                type="email"
                placeholder="Email"
              />
            </div>
            <div className="w-3/5 px-3 mx-auto">
              <CountrySelect label="Select Country" name="country" className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white">
                <option value="Australia">Australia</option>
                <option value="Canada">Canada</option>
                <option value="United Kingdom">United Kingdom</option>
                <option value="United States">United States</option>
              </CountrySelect>
            </div>
            <div className="w-full mx-auto">
              <label className="flex justify-center">Date of Birth</label>
              <MyDatePicker name="dob"/>
            </div>
            <TextInput
              className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
              label="Address"
              name="address"
              type="text"
              placeholder=""
            />
            <div className="flex flex-wrap -mx-3 mb-2">
              <div className="w-1/3 px-3 mb-6 md:mb-0">  
              <TextInput
                className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                label="City"
                name="city"
                type="text"
                placeholder="City"
              />   
              </div>
              <div className="w-1/3 px-3 mb-6 md:mb-0"> 
                <TextInput
                  className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                  label="State"
                  name="state"
                  type="text"
                  placeholder=""
                />
              </div>
              <div className="w-1/3 px-3 mb-6 md:mb-0"> 
                <TextInput
                  className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                  label="Postal/Zip code"
                  name="postal"
                  type="text"
                  placeholder=""
                />
              </div>
            </div>
            <div className="w-3/5 px-3 mx-auto">
              <TextInput
                className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
                label="Phone"
                name="phone"
                type="text"
                placeholder=""
              />
            </div>
            <div className="w-full mx-auto">
              <Select className="flex justify-center" label="Ok to text mobible phone" name="text">
                <option value="yes">Yes</option>
                <option value="no">No</option>
              </Select>
            </div>
            <TextInput
              className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
              label="Confirm Email"
              name="confirmEmail"
              type="text"
              placeholder=""
            /> 
            <TextInput
              className="appearance-none block w-full text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
              label="Password"
              name="password"
              type="text"
              placeholder=""
            />
            <Select label="How did you hear about us?" name="hear" className="">
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
                    className=""
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
                value={"yes"}>
              Yes
              </MyRadio>
              <MyRadio 
                label="no" 
                name="newsletter"
                value={"no"}>
              No
              </MyRadio>           
            <button className="rounded-md bg-llorange-500 px-3 py-1.5 text-sm font-semibold leading-6 text-gray-100 shadow-sm hover:bg-llorange-600 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-llorange-600" type="submit">Submit</button>
          </Form>
        )}
      </Formik>
    </main>
  )
}
