require 'test_helper'

class TtimesControllerTest < ActionController::TestCase
  setup do
    @ttime = ttimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ttimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ttime" do
    assert_difference('Ttime.count') do
      post :create, ttime: { car_id: @ttime.car_id, miliseconds: @ttime.miliseconds, minutes: @ttime.minutes, seconds: @ttime.seconds, track_id: @ttime.track_id, user_id: @ttime.user_id }
    end

    assert_redirected_to ttime_path(assigns(:ttime))
  end

  test "should show ttime" do
    get :show, id: @ttime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ttime
    assert_response :success
  end

  test "should update ttime" do
    patch :update, id: @ttime, ttime: { car_id: @ttime.car_id, miliseconds: @ttime.miliseconds, minutes: @ttime.minutes, seconds: @ttime.seconds, track_id: @ttime.track_id, user_id: @ttime.user_id }
    assert_redirected_to ttime_path(assigns(:ttime))
  end

  test "should destroy ttime" do
    assert_difference('Ttime.count', -1) do
      delete :destroy, id: @ttime
    end

    assert_redirected_to ttimes_path
  end
end
