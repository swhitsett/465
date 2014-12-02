require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { car_desc: @car.car_desc, car_displacement: @car.car_displacement, car_make: @car.car_make, car_model: @car.car_model, car_weight: @car.car_weight, car_year: @car.car_year, image_id: @car.image_id }
    end

    assert_redirected_to car_path(assigns(:car))
  end

  test "should show car" do
    get :show, id: @car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car
    assert_response :success
  end

  test "should update car" do
    patch :update, id: @car, car: { car_desc: @car.car_desc, car_displacement: @car.car_displacement, car_make: @car.car_make, car_model: @car.car_model, car_weight: @car.car_weight, car_year: @car.car_year, image_id: @car.image_id }
    assert_redirected_to car_path(assigns(:car))
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete :destroy, id: @car
    end

    assert_redirected_to cars_path
  end
end
