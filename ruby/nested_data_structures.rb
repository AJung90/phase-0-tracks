#Make nested data structures of the semifinal teams in each corresponding conference of the NBA
NBA = {
	eastern_conference: {
		playoff_matchups: {
			Toronto: Miami,
			Cleveland: Atlanta
		},
		finals_teams_stars: [
		"Dwayne Wade",
		"LeBron James"
		]	
	},
	western_conference: {
		playoff_matchups: {
			Oklahoma_City: San_Antonio,
			Golden_State: Portland
		},
		finals_teams_stars: [
			"Kevin Durant",
			"Steph Curry"
		]
	}

}

#Testing a few different types of access
puts NBA[:eastern_conference][playoff_matchups]