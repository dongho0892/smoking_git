require 'test_helper'

class SmokingAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smoking_area = smoking_areas(:one)
  end

  test "should get index" do
    get smoking_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_smoking_area_url
    assert_response :success
  end

  test "should create smoking_area" do
    assert_difference('SmokingArea.count') do
      post smoking_areas_url, params: { smoking_area: { address: @smoking_area.address, area_catagory: @smoking_area.area_catagory, area_name: @smoking_area.area_name, latitude: @smoking_area.latitude, longitude: @smoking_area.longitude, penalty: @smoking_area.penalty, statute: @smoking_area.statute } }
    end

    assert_redirected_to smoking_area_url(SmokingArea.last)
  end

  test "should show smoking_area" do
    get smoking_area_url(@smoking_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_smoking_area_url(@smoking_area)
    assert_response :success
  end

  test "should update smoking_area" do
    patch smoking_area_url(@smoking_area), params: { smoking_area: { address: @smoking_area.address, area_catagory: @smoking_area.area_catagory, area_name: @smoking_area.area_name, latitude: @smoking_area.latitude, longitude: @smoking_area.longitude, penalty: @smoking_area.penalty, statute: @smoking_area.statute } }
    assert_redirected_to smoking_area_url(@smoking_area)
  end

  test "should destroy smoking_area" do
    assert_difference('SmokingArea.count', -1) do
      delete smoking_area_url(@smoking_area)
    end

    assert_redirected_to smoking_areas_url
  end
end
