require 'test_helper'

class PassengerTripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @passenger_trip = passenger_trips(:one)
  end

  test "should get index" do
    get passenger_trips_url
    assert_response :success
  end

  test "should get new" do
    get new_passenger_trip_url
    assert_response :success
  end

  test "should create passenger_trip" do
    assert_difference('PassengerTrip.count') do
      post passenger_trips_url, params: { passenger_trip: { id_passenger: @passenger_trip.id_passenger, id_passenger_trip: @passenger_trip.id_passenger_trip, id_trip: @passenger_trip.id_trip } }
    end

    assert_redirected_to passenger_trip_url(PassengerTrip.last)
  end

  test "should show passenger_trip" do
    get passenger_trip_url(@passenger_trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_passenger_trip_url(@passenger_trip)
    assert_response :success
  end

  test "should update passenger_trip" do
    patch passenger_trip_url(@passenger_trip), params: { passenger_trip: { id_passenger: @passenger_trip.id_passenger, id_passenger_trip: @passenger_trip.id_passenger_trip, id_trip: @passenger_trip.id_trip } }
    assert_redirected_to passenger_trip_url(@passenger_trip)
  end

  test "should destroy passenger_trip" do
    assert_difference('PassengerTrip.count', -1) do
      delete passenger_trip_url(@passenger_trip)
    end

    assert_redirected_to passenger_trips_url
  end
end
