require "application_system_test_case"

class EventTeamsTest < ApplicationSystemTestCase
  setup do
    @event_team = event_teams(:one)
  end

  test "visiting the index" do
    visit event_teams_url
    assert_selector "h1", text: "Event Teams"
  end

  test "creating a Event team" do
    visit event_teams_url
    click_on "New Event Team"

    fill_in "Event", with: @event_team.event_id
    fill_in "Team", with: @event_team.team_id
    click_on "Create Event team"

    assert_text "Event team was successfully created"
    click_on "Back"
  end

  test "updating a Event team" do
    visit event_teams_url
    click_on "Edit", match: :first

    fill_in "Event", with: @event_team.event_id
    fill_in "Team", with: @event_team.team_id
    click_on "Update Event team"

    assert_text "Event team was successfully updated"
    click_on "Back"
  end

  test "destroying a Event team" do
    visit event_teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event team was successfully destroyed"
  end
end
