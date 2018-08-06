require "application_system_test_case"

class AccomodationsTest < ApplicationSystemTestCase
  setup do
    @accomodation = accomodations(:one)
  end

  test "visiting the index" do
    visit accomodations_url
    assert_selector "h1", text: "Accomodations"
  end

  test "creating a Accomodation" do
    visit accomodations_url
    click_on "New Accomodation"

    fill_in "Address", with: @accomodation.address_id
    fill_in "Arrival", with: @accomodation.arrival
    fill_in "Co", with: @accomodation.co
    fill_in "Departure", with: @accomodation.departure
    click_on "Create Accomodation"

    assert_text "Accomodation was successfully created"
    click_on "Back"
  end

  test "updating a Accomodation" do
    visit accomodations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @accomodation.address_id
    fill_in "Arrival", with: @accomodation.arrival
    fill_in "Co", with: @accomodation.co
    fill_in "Departure", with: @accomodation.departure
    click_on "Update Accomodation"

    assert_text "Accomodation was successfully updated"
    click_on "Back"
  end

  test "destroying a Accomodation" do
    visit accomodations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accomodation was successfully destroyed"
  end
end
