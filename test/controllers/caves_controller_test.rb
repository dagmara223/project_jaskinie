require 'test_helper'

class CavesControllerTest < ActionController::TestCase
  setup do
    @cafe = caves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafe" do
    assert_difference('Cave.count') do
      post :create, cafe: { description: @cafe.description, lat: @cafe.lat, lon: @cafe.lon, name: @cafe.name }
    end

    assert_redirected_to cafe_path(assigns(:cafe))
  end

  test "should show cafe" do
    get :show, id: @cafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafe
    assert_response :success
  end

  test "should update cafe" do
    patch :update, id: @cafe, cafe: { description: @cafe.description, lat: @cafe.lat, lon: @cafe.lon, name: @cafe.name }
    assert_redirected_to cafe_path(assigns(:cafe))
  end

  test "should destroy cafe" do
    assert_difference('Cave.count', -1) do
      delete :destroy, id: @cafe
    end

    assert_redirected_to caves_path
  end
end