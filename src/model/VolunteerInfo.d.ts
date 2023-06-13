export interface VolunteerInfo {
	birthday: string,
	gender_identity: string,
	volunteering_with: string,
	employer: string,
	facebook_name: string,
	max_travel_distance: number,
	families_per_delivery: number,
	allowable_dietary_restrictions: string[],
	accomodates_extra_requests: boolean,
	show_completed_requests: boolean,
	available_schedule: string[],
}