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

// TODO: hid requester/volunteer-specific attestations for respective roles
function showAttestations (attestations : Attestations) {
    return (
        <div>
            <Typography variant="h2">
                User Attestations:
            </Typography>
            <Typography>
                User is eighteen or older: {attestations.user_is_eighteen ? "true" : "false"} <br />
                User accepts email communications from Lasagna Love:
                    {attestations.user_accepted_email_communications ? "true" : "false"} <br />
                Date requester accepted liability release: {attestations.requester_accepted_liability_release ?
                     attestations.requester_accepted_liability_release : "(never accepted)"} <br />
                Date volunteer accepted indemnity waiver: {attestations.volunteer_accepted_indemnity_waiver ?
                    attestations.volunteer_accepted_indemnity_waiver : "(never accepted)"} <br />
                Date volunteer accepted volunteer terms and conditions:
                    {attestations.volunteer_accepted_volunteer_terms ?
                        attestations.volunteer_accepted_volunteer_terms : "(never accepted)"} <br />
                Date volunteer completed safety training: {attestations.volunteer_completed_safety_training ?
                    attestations.volunteer_completed_safety_training : "(never completed)"}
            </Typography>
        </div>
    )
}

function showRecipientInfo (recipientInfo: RecipientInfo) {
    return (
        <div>
            <Typography variant="h2">
                Recipient information:
            </Typography>
            <Typography>
            Last delivery received: {recipientInfo.last_delivery_received ?
               recipientInfo.last_delivery_received : "no deliveries received" } <br />
            Number of adults in household: {recipientInfo.adult_count} <br />
            Number of children in household: {recipientInfo.child_count} <br />
            Learned about Lasagna Love from: {recipientInfo.learned_about_from} <br />
            Dietary restrictions: {recipientInfo.dietary_restrictions ?
                recipientInfo.dietary_restrictions : "none"}
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
            Birthday: {volunteerInfo.birthday} <br />
            Facebook profile name: {volunteerInfo.facebook_name} <br />
            Organization volunteering with: {volunteerInfo.volunteering_with} <br />
            Employer: {volunteerInfo.employer} <br />
            Gender identity: {volunteerInfo.gender_identity} <br />
            Maximum distance willing to travel to deliver: {volunteerInfo.max_travel_distance} <br />
            Maximum families per delivery: {volunteerInfo.families_per_delivery} <br />
            Willing to accomodate extra requests: {volunteerInfo.accomodates_extra_requests ?
                "true" : "false"} <br />
            Show completed requests in portal by default: {volunteerInfo.show_completed_requests ?
                "true" : "false"} <br />
            Supported dietary restrictions: {volunteerInfo.allowable_dietary_restrictions ?
                volunteerInfo.allowable_dietary_restrictions : "none"} <br />
            Availability schedule: {volunteerInfo.available_schedule ?
                "(display not supported)" : "(information unknown, not yet supported)"}
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
                        User information:
                    </Typography>
                    <Typography>
                        User ID: {userProfile?.id}<br />
                        Email address: {userProfile?.email}<br />
                        Password: (hidden) <br />
                        User roles: {userProfile?.roles ? userProfile.roles.toString() : ""}<br />
                        <br />
                        First name: {userProfile?.given_name}<br />
                        Middle / maiden name: {userProfile?.middle_or_maiden_name}<br />
                        Last name: {userProfile?.family_name}<br />
                        Home phone: {userProfile?.home_phone}<br />
                        Mobile phone: {userProfile?.mobile_phone}<br />
                        Permission to contact at mobile phone regarding matches:
                            {userProfile?.mobile_contact_permission ? "true" : "false"}<br />
                        Permission to email Lasagna Love news and updates:
                            {userProfile?.news_updates_permission ? "true" : "false"}<br />
                        <br />
                        Street address: {userProfile?.street_address ?
                            userProfile.street_address.toString() : ""}<br />
                        City: {userProfile?.city}<br />
                        State / Province: {userProfile?.state_or_province}<br />
                        Postal code: {userProfile?.postal_code}<br />
                        Country: {userProfile?.country}<br />
                        <br />
                        Profile created on: {userProfile?.creation_time}<br />
                        Profile last updated: {userProfile?.last_update_time}<br />
                        Email address verified: {userProfile?.email_validated ? "true" : "false"}<br />
                        User is active: {userProfile?.active ? "true" : "false"}<br />
                        User is paused: {userProfile?.paused ? "true" : "false"}<br />
                        User pause end date: {userProfile?.paused_end_date ?
                            userProfile?.paused_end_date : "(none)"}<br />
                    </Typography>
                    { userProfile?.attestations ? showAttestations(userProfile.attestations) : "" }
                    { userProfile?.volunteer_info ? showVolunteerInfo(userProfile.volunteer_info) : "" }
                    { userProfile?.recipient_info ? showRecipientInfo(userProfile.recipient_info) : "" }
                </CardContent>
            </Card>
        </main>
    );
}
