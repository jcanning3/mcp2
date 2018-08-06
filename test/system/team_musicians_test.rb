require "application_system_test_case"

class TeamMusiciansTest < ApplicationSystemTestCase
  setup do
    @team_musician = team_musicians(:one)
  end

  test "visiting the index" do
    visit team_musicians_url
    assert_selector "h1", text: "Team Musicians"
  end

  test "creating a Team musician" do
    visit team_musicians_url
    click_on "New Team Musician"

    fill_in "Musician", with: @team_musician.musician_id
    fill_in "Team", with: @team_musician.team_id
    click_on "Create Team musician"

    assert_text "Team musician was successfully created"
    click_on "Back"
  end

  test "updating a Team musician" do
    visit team_musicians_url
    click_on "Edit", match: :first

    fill_in "Musician", with: @team_musician.musician_id
    fill_in "Team", with: @team_musician.team_id
    click_on "Update Team musician"

    assert_text "Team musician was successfully updated"
    click_on "Back"
  end

  test "destroying a Team musician" do
    visit team_musicians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team musician was successfully destroyed"
  end
end
