require 'test_helper'

class You2HelisControllerTest < ActionController::TestCase
  setup do
    @you2_heli = you2_helis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:you2_helis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create you2_heli" do
    assert_difference('You2Heli.count') do
      post :create, you2_heli: { content: @you2_heli.content, user_id: @you2_heli.user_id }
    end

    assert_redirected_to you2_heli_path(assigns(:you2_heli))
  end

  test "should show you2_heli" do
    get :show, id: @you2_heli
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @you2_heli
    assert_response :success
  end

  test "should update you2_heli" do
    patch :update, id: @you2_heli, you2_heli: { content: @you2_heli.content, user_id: @you2_heli.user_id }
    assert_redirected_to you2_heli_path(assigns(:you2_heli))
  end

  test "should destroy you2_heli" do
    assert_difference('You2Heli.count', -1) do
      delete :destroy, id: @you2_heli
    end

    assert_redirected_to you2_helis_path
  end
end
