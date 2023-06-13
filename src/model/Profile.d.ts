import { Attestations } from 'Attestations';
import { VolunteerInfo } from './VolunteerInfo';
import { RecipientInfo } from './RecipientInfo';

export interface Profile {
    id: number,
    roles: string[],
    username: string,
    // password can be supplied in a PATCH but will not be returned by the Bechamel API
    given_name: string,
    middle_or_maiden_name: string,
    family_name: string,
    email: string,
    email_validated: boolean,
    creation_time: string,
    last_update_time: string,
    street_address: string[],
    city: string,
    state_or_province: string,
    postal_code: string,
    home_phone: string,
    mobile_phone: string,
    mobile_contact_permission: boolean,
    news_updates_permission: boolean,
    active: boolean,
    paused: boolean,
    paused_end_date: string,
    attestations: Attestations,
    //	RecipientInfo           *LasagnaLoveRecipientInfo `json:"recipient_info,omitempty"`
    //	VolunteerInfo           *LasagnaLoveVolunteerInfo `json:"volunteer_info,omitempty"`
}