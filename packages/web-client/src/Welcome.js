import React from "react";
//import { Link } from "react-router-dom";
import logo from "./images/logo-vrt1.png";

export default function Welcome() {
  return (
    <div className="welcome">
      <header>
        <img src={logo} alt="Logo" />
      </header>

      <p>Already have an account? </p>
    </div>
  );
}
