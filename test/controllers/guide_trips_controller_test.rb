require 'test_helper'

class GuideTripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guide_trip = guide_trips(:one)
  end

  test "should get index" do
    get guide_trips_url
    assert_response :success
  end

  test "should get new" do
    get new_guide_trip_url
    assert_response :success
  end

  test "should create guide_trip" do
    assert_difference('GuideTrip.count') do
      post guide_trips_url, params: { guide_trip: { id_guide: @guide_trip.id_guide, id_guide_trip: @guide_trip.id_guide_trip, id_trip: @guide_trip.id_trip } }
    end

    assert_redirected_to guide_trip_url(GuideTrip.last)
  end

  test "should show guide_trip" do
    get guide_trip_url(@guide_trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_guide_trip_url(@guide_trip)
    assert_response :success
  end

  test "should update guide_trip" do
    patch guide_trip_url(@guide_trip), params: { guide_trip: { id_guide: @guide_trip.id_guide, id_guide_trip: @guide_trip.id_guide_trip, id_trip: @guide_trip.id_trip } }
    assert_redirected_to guide_trip_url(@guide_trip)
  end

  test "should destroy guide_trip" do
    assert_difference('GuideTrip.count', -1) do
      delete guide_trip_url(@guide_trip)
    end

    assert_redirected_to guide_trips_url
  end
end
