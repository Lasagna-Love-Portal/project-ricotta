import Image from 'next/image'
import { Inter } from 'next/font/google'
import React from "react";
import { useTheme } from "@mui/material/styles";
import Carousel from "react-material-ui-carousel";
import { Paper, Card, Typography, Link } from "@mui/material";
import styles from '@/styles/Welcome.module.css';
import ReusableButton from "../components/ReusableButton";
const inter = Inter({ subsets: ['latin'] })

const welcomeSlides = [
  {
    img: require("public/rhiannon-cooking.png"),
    width: 389,
    height: 266,
    heading: "Get Ready to Spread Kindness!",
    description:
      "Positively impact your community by cooking a homemade meal for your neighbor in need.",
    alt: "Woman and child in kitchen cooking",
  },
  {
    img: require("public/lasagna.png"),
    width: 390,
    height: 267,
    heading: "Earn LL Points",
    description:
      "1 lasagna delivered = 1 point. The more points you have the more benefits you’ll receive.",
    alt: "Lasagna topped with heart shaped cheese and basil flowers",
  },
  {
    img: require("public/group.png"),
    width: 390,
    height: 267,
    heading: "Donate to Help",
    description: `If you can’t cook one week donate your funds for cooking that week. Any help counts.`,
    alt: "Eight people stand smiling holding a Lasagna Love banner",
  },
  {
    img: require("public/kelly-a.png"),
    width: 390,
    height: 266,
    heading: "Sign Up For Events",
    description:
      "Check your events tab in your matches view to see all upcoming events you could volounter with.",
    alt: "Man and woman standing before packaged food dressed in Lasagna Love t shirts",
  },
];

export default function Home() {
  const theme = useTheme();
  return (
    <main className={styles['welcome-screen']}>
      <header className={styles['welcome-header']}>
        <Image src={"logo-vrt1.png"} alt="Lasagna Love logo" width={90} height={79} className="logo" />
      </header>
      <Carousel
        className={styles['welcome-carousel']}
        indicatorIconButtonProps={{
          style: { color: theme.palette.text.secondary },
        }}
        activeIndicatorIconButtonProps={{
          style: { color: theme.palette.primary.main },
        }}
      >
        {welcomeSlides.map((item, i) => {
          return (
            <Card className={styles['welcome-slide']} key={i} elevation={0}>
              <Image src={item.img} alt={item.alt} width={item.width} height={item.height}
                className={styles['welcome-image']} />
              <div className={styles['slide-text']}>
                <Typography variant="h1">{item.heading}</Typography>
                <Typography variant="body1">{item.description}</Typography>
              </div>
            </Card>
          );
        })}
      </Carousel>

      <div className={styles['create-acct-wrapper']}>
        <ReusableButton
          buttonVariant="pill"
          buttonColor="primary"
          buttonText="Create Account"
        />
        <Typography variant="body1">
          Already have an account?{" "}
          <Link href="#" variant="button">
            Log In
          </Link>
        </Typography>
      </div>

      <div>
        <Typography>
          <Link href="contributors">We extend a special thank you to all our Project Ricotta contributors!</Link>
        </Typography>
      </div>
    </main>
  );
}
