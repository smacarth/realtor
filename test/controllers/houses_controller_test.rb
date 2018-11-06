require 'test_helper'

class HousesControllerTest < ActionController::TestCase
  setup do
    @house = houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:houses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create house" do
    assert_difference('House.count') do
      post :create, house: { bathrooms: @house.bathrooms, bedrooms: @house.bedrooms, city: @house.city, date_listed: @house.date_listed, description: @house.description, garage_size: @house.garage_size, lot_size: @house.lot_size, mls: @house.mls, neighborhood: @house.neighborhood, sales_price: @house.sales_price, square_feet: @house.square_feet, state: @house.state, street_1: @house.street_1, street_2: @house.street_2, zipcode: @house.zipcode }
    end

    assert_redirected_to house_path(assigns(:house))
  end

  test "should show house" do
    get :show, id: @house
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @house
    assert_response :success
  end

  test "should update house" do
    patch :update, id: @house, house: { bathrooms: @house.bathrooms, bedrooms: @house.bedrooms, city: @house.city, date_listed: @house.date_listed, description: @house.description, garage_size: @house.garage_size, lot_size: @house.lot_size, mls: @house.mls, neighborhood: @house.neighborhood, sales_price: @house.sales_price, square_feet: @house.square_feet, state: @house.state, street_1: @house.street_1, street_2: @house.street_2, zipcode: @house.zipcode }
    assert_redirected_to house_path(assigns(:house))
  end

  test "should destroy house" do
    assert_difference('House.count', -1) do
      delete :destroy, id: @house
    end

    assert_redirected_to houses_path
  end
end
