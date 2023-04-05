import React from "react";
import logo from "./images/logo-vrt1.png";
import Carousel from "react-material-ui-carousel";
import { Paper, Card, Button } from "@mui/material";

const welcomeSlides = [
  {
    img: require("./images/rhiannon-cooking.png"),
    heading: "Get Ready to Spread Kindness!",
    description:
      "Positively impact your community by cooking a homemade meal for your neighbor in need.",
    alt: "Woman and child in kitchen cooking",
  },
  {
    img: require("./images/lasagna.png"),
    heading: "Earn LL Points",
    description:
      "1 lasagna delivered = 1 point. The more points you have the more benefits you’ll receive.",
    alt: "Lasagna topped with heart shaped cheese and basil flowers",
  },
  {
    img: require("./images/group.png"),
    heading: "Donate to Help",
    description: `If you can’t cook one week donate your funds for cooking that week. Any help counts.`,
    alt: "Eight people stand smiling holding a Lasagna Love banner",
  },
  {
    img: require("./images/kelly-a.png"),
    heading: "Sign Up For Events",
    description:
      "Check your events tab in your matches view to see all upcoming events you could volounter with.",
    alt: "Man and woman standing before packaged food dressed in Lasagna Love t shirts",
  },
];

export default function Welcome() {
  return (
    <Paper className="welcome-screen">
      <header>
        <img src={logo} alt="Logo" />
      </header>
      <Carousel className="welcome-carousel">
        {welcomeSlides.map((item, i) => {
          return (
            <Card className="welcome-slide" key={item.i}>
              <img src={item.img} alt={item.alt} />
              <h1>{item.heading}</h1>
              <p>{item.description}</p>
            </Card>
          );
        })}
      </Carousel>

      <div className="create-acct-wrapper">
        <Button className="create-acct-btn">Create Account</Button>
        <p>
          Already have an account? <span className="logIn-link">Log In</span>
        </p>
      </div>
    </Paper>
  );
}
