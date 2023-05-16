import Image from 'next/image'
import { Inter } from 'next/font/google'
import React from "react";
import { useTheme } from "@mui/material/styles";
import { Typography } from "@mui/material";
import styles from '@/styles/Contributors.module.css';
const inter = Inter({ subsets: ['latin'] })

const project_ricotta_contributors = [
    {
        cname: "Danielle Gellis",
        contrib_url: "https://github.com/danisyellis"
    },
    {
        cname: "Vale Gilbert",
        contrib_url: "https://github.com/urbanengr"
    },
    {
        cname: "Mike Kantzer",
        contrib_url: "https://github.com/mkantzer"
    },
    {
        cname: "Matt Kuznicki",
        contrib_url: "https://github.com/mattkuznicki-ll"
    },
    {
        cname: "Alfredo Luque",
        contrib_url: "https://github.com/iamthebot"
    },
    {
        cname: "Pat Mejia",
        contrib_url: "https://github.com/patmejia"
    },
    {
        cname: "Emma Nolan",
        contrib_url: "https://github.com/emmanolan"
    },
    {
        cname: "Jonathan Roemer",
        contrib_url: "https://github.com/pid1"
    },
    {
        cname: "Esther Rose",
        contrib_url: "https://github.com/codarose"
    },
    {
        cname: "Allyson S.",
        contrib_url: "https://github.com/allyson-s-code"
    }
];

export default function Contributors() {
    const theme = useTheme();
    return (
        <main>
            <header>
                <Image src={"logo-vrt1.png"} alt="Lasagna Love logo" width={90} height={79} className="logo" />
            </header>

            <h1>Lasagna Love Project Ricotta Contributors</h1>

            <div className="styles.cbox">
                <Typography>
                    <p>
                        Thank you to all who were so generous with their time and skills. We&apos;ve
                        listed the Contributors below. Clicking on their names will direct you to
                        their contribution page.
                    </p>
                    <h2>Contributors</h2>
                    <Typography>
                        {project_ricotta_contributors.map((item, i) => {
                            return (
                                <div className="cname" key={i}>
                                    <a href={item.contrib_url}>{item.cname}</a>
                                </div>
                            );
                        })}
                    </Typography>
                    <p>
                        If you were a Contributor and your name is not listed, please open a pull request
                        to enter your name and contribution. We want to honor <i>all</i>
                        of our Contributors.
                    </p>
                </Typography>
            </div>
        </main>
    );
}
