require 'test_helper'

class PlaceRegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @place_register = place_registers(:one)
  end

  test "should get index" do
    get place_registers_url
    assert_response :success
  end

  test "should get new" do
    get new_place_register_url
    assert_response :success
  end

  test "should create place_register" do
    assert_difference('PlaceRegister.count') do
      post place_registers_url, params: { place_register: { address: @place_register.address, area_name: @place_register.area_name, description: @place_register.description, latitude: @place_register.latitude, longitude: @place_register.longitude, type: @place_register.type } }
    end

    assert_redirected_to place_register_url(PlaceRegister.last)
  end

  test "should show place_register" do
    get place_register_url(@place_register)
    assert_response :success
  end

  test "should get edit" do
    get edit_place_register_url(@place_register)
    assert_response :success
  end

  test "should update place_register" do
    patch place_register_url(@place_register), params: { place_register: { address: @place_register.address, area_name: @place_register.area_name, description: @place_register.description, latitude: @place_register.latitude, longitude: @place_register.longitude, type: @place_register.type } }
    assert_redirected_to place_register_url(@place_register)
  end

  test "should destroy place_register" do
    assert_difference('PlaceRegister.count', -1) do
      delete place_register_url(@place_register)
    end

    assert_redirected_to place_registers_url
  end
end
