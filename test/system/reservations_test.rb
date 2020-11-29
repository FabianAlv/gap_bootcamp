require "application_system_test_case"

class ReservationsTest < ApplicationSystemTestCase
  setup do
    @reservation = reservations(:one)
  end

  test "visiting the index" do
    visit reservations_url
    assert_selector "h1", text: "Reservations"
  end

  test "creating a Reservation" do
    visit reservations_url
    click_on "New Reservation"

    check "Approved" if @reservation.approved
    fill_in "Email", with: @reservation.email
    fill_in "Guests", with: @reservation.guests
    fill_in "Last name", with: @reservation.last_name
    fill_in "Name", with: @reservation.name
    fill_in "Nights", with: @reservation.nights
    fill_in "Phone", with: @reservation.phone
    fill_in "Property", with: @reservation.property_id
    fill_in "Total cost", with: @reservation.total_cost
    click_on "Create Reservation"

    assert_text "Reservation was successfully created"
    click_on "Back"
  end

  test "updating a Reservation" do
    visit reservations_url
    click_on "Edit", match: :first

    check "Approved" if @reservation.approved
    fill_in "Email", with: @reservation.email
    fill_in "Guests", with: @reservation.guests
    fill_in "Last name", with: @reservation.last_name
    fill_in "Name", with: @reservation.name
    fill_in "Nights", with: @reservation.nights
    fill_in "Phone", with: @reservation.phone
    fill_in "Property", with: @reservation.property_id
    fill_in "Total cost", with: @reservation.total_cost
    click_on "Update Reservation"

    assert_text "Reservation was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservation" do
    visit reservations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservation was successfully destroyed"
  end
end
