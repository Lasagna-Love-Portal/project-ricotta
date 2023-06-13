import { Inter } from "next/font/google";
import React from "react";
import { Button, Card, CardContent, Typography } from '@mui/material'
import { useTheme } from "@mui/material/styles";
import styles from "@/styles/Welcome.module.css";
import UserService from "@/services/user.service";
import { Attestations } from '@/model/Attestations';
import { VolunteerInfo } from '@/model/VolunteerInfo';
import { RecipientInfo } from '@/model/RecipientInfo';
import { Profile } from '@/model/Profile';
const inter = Inter({ subsets: ["latin"] });

// The main header fetches the current username out of the client-side
// stored JWT, so cannot be server-side prerendered
import dynamic from "next/dynamic";
const MainHeader = dynamic(() => import("@/components/main_header"), {
  ssr: false,
});

function showRecipientInfo (recipientInfo: RecipientInfo) {
    return (
        <div>
            <Typography variant="h2">
                Recipient information:
            </Typography>
            <Typography>
            Number of adults in household: {recipientInfo.adult_count} <br />
            Number of children in household: {recipientInfo.child_count} <br />
            Learned about Lasagna Love from: {recipientInfo.learned_about_from} <br />
            </Typography>
        </div>
    )
}

function showVolunteerInfo (volunteerInfo : VolunteerInfo) {
    return (
        <div>
            <Typography variant="h2">
                Volunteer information:
            </Typography>
            <Typography>
            Facebook profile name: {volunteerInfo.facebook_name} <br />
            Birthday: {volunteerInfo.birthday} <br />
            Gender identity: {volunteerInfo.gender_identity} <br />
            Maximum distance willing to travel to deliver: {volunteerInfo.max_travel_distance} <br />
            Maximum families per delivery: {volunteerInfo.families_per_delivery} <br />
            </Typography>
        </div>
    )
}

export default function Profile() {
    const [userProfile, setUserProfile] = React.useState<Profile | undefined>(undefined);
    const [isLoading, setLoading] = React.useState(false);
    let statusString : string = "";

    React.useEffect(() => {
        setLoading(true);
        UserService.getCurrentUserProfile()
        .then((userProfile) => {
            setUserProfile(userProfile);
            setLoading(false);
        }, (error) => {
            alert("Profile fetch error: " + error);
            setLoading(false);
        });
    }, []);

    if (isLoading) statusString = "Loading..."
    if (!userProfile) {
        statusString = "No profile data obtained."
    } else {
        statusString = "";
    }

    const theme = useTheme();

    return (
        <main className={styles["welcome-screen"]}>
            <div>
                <MainHeader />
            </div>
            <Card>
                <CardContent>
                    <Typography variant="h1">
                        Current logged-in user
                    </Typography>
                    <Typography variant="h2">
                        Some basic user info (not all)
                    </Typography>
                    <Typography>
                        User ID: {userProfile?.id}<br />
                        Username: {userProfile?.username}<br />
                        User roles: {userProfile?.roles}<br />
                        First name: {userProfile?.given_name}<br />
                        Last name: {userProfile?.family_name}<br />
                    </Typography>
                    <Typography variant="h2">
                        User Attestations:
                    </Typography>
                    <Typography>
                        User is eighteen or older: {userProfile?.attestations.user_is_eighteen ? "true" : "false"} <br />
                    </Typography>
                    { userProfile?.volunteer_info ? showVolunteerInfo(userProfile.volunteer_info) : "" }
                    { userProfile?.recipient_info ? showRecipientInfo(userProfile.recipient_info) : "" }
                </CardContent>
            </Card>
        </main>
    );
}
