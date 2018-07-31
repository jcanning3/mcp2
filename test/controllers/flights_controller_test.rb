require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight = flights(:one)
  end

  test "should get index" do
    get flights_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_url
    assert_response :success
  end

  test "should create flight" do
    assert_difference('Flight.count') do
      post flights_url, params: { flight: { airline_id: @flight.airline_id, arrival: @flight.arrival, departure: @flight.departure, destination: @flight.destination, flight: @flight.flight, from: @flight.from, musician_id: @flight.musician_id, notes: @flight.notes } }
    end

    assert_redirected_to flight_url(Flight.last)
  end

  test "should show flight" do
    get flight_url(@flight)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_url(@flight)
    assert_response :success
  end

  test "should update flight" do
    patch flight_url(@flight), params: { flight: { airline_id: @flight.airline_id, arrival: @flight.arrival, departure: @flight.departure, destination: @flight.destination, flight: @flight.flight, from: @flight.from, musician_id: @flight.musician_id, notes: @flight.notes } }
    assert_redirected_to flight_url(@flight)
  end

  test "should destroy flight" do
    assert_difference('Flight.count', -1) do
      delete flight_url(@flight)
    end

    assert_redirected_to flights_url
  end
end
