# Inspired by The IT Crowd
# https://en.wikipedia.org/wiki/The_IT_Crowd

resource "pagerduty_team" "it" {
  name        = "Hello IT"
  description = "Have you tried turning it off and on again?"
}

resource "pagerduty_user" "maurice_moss" {
  name  = "Maurice Moss"
  email = "mmoss@reynholm.industries"
}

resource "pagerduty_user" "roy_trenneman" {
  name  = "Roy Trenneman"
  email = "rtrenneman@reynholm.industries"
}

resource "pagerduty_user" "jen_barber" {
  name  = "Jen Barber"
  email = "jbarber@reynholm.industries"
}

resource "pagerduty_team_membership" "mmoss_it" {
  user_id = pagerduty_user.maurice_moss.id
  team_id = pagerduty_team.it.id
  role    = "observer"
}

resource "pagerduty_team_membership" "rtenneman_it" {
  user_id = pagerduty_user.roy_trenneman.id
  team_id = pagerduty_team.it.id
  role    = "observer"
}

resource "pagerduty_team_membership" "jbarber_it" {
  user_id = pagerduty_user.jen_barber.id
  team_id = pagerduty_team.it.id
  role    = "manager"
}
