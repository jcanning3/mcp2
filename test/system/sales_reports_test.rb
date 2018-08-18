require "application_system_test_case"

class SalesReportsTest < ApplicationSystemTestCase
  setup do
    @sales_report = sales_reports(:one)
  end

  test "visiting the index" do
    visit sales_reports_url
    assert_selector "h1", text: "Sales Reports"
  end

  test "creating a Sales report" do
    visit sales_reports_url
    click_on "New Sales Report"

    fill_in "Concert", with: @sales_report.concert
    fill_in "Count", with: @sales_report.count
    fill_in "Date", with: @sales_report.date
    fill_in "Description", with: @sales_report.description
    fill_in "Ticket Category", with: @sales_report.ticket_category_id
    fill_in "Unit Price", with: @sales_report.unit_price
    fill_in "Vendor", with: @sales_report.vendor_id
    click_on "Create Sales report"

    assert_text "Sales report was successfully created"
    click_on "Back"
  end

  test "updating a Sales report" do
    visit sales_reports_url
    click_on "Edit", match: :first

    fill_in "Concert", with: @sales_report.concert
    fill_in "Count", with: @sales_report.count
    fill_in "Date", with: @sales_report.date
    fill_in "Description", with: @sales_report.description
    fill_in "Ticket Category", with: @sales_report.ticket_category_id
    fill_in "Unit Price", with: @sales_report.unit_price
    fill_in "Vendor", with: @sales_report.vendor_id
    click_on "Update Sales report"

    assert_text "Sales report was successfully updated"
    click_on "Back"
  end

  test "destroying a Sales report" do
    visit sales_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sales report was successfully destroyed"
  end
end
