require 'test_helper'

class WatchingsControllerTest < ActionController::TestCase
  setup do
    @watching = watchings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:watchings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create watching" do
    assert_difference('Watching.count') do
      post :create, watching: { project_id: @watching.project_id, user_id: @watching.user_id }
    end

    assert_redirected_to watching_path(assigns(:watching))
  end

  test "should show watching" do
    get :show, id: @watching
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @watching
    assert_response :success
  end

  test "should update watching" do
    patch :update, id: @watching, watching: { project_id: @watching.project_id, user_id: @watching.user_id }
    assert_redirected_to watching_path(assigns(:watching))
  end

  test "should destroy watching" do
    assert_difference('Watching.count', -1) do
      delete :destroy, id: @watching
    end

    assert_redirected_to watchings_path
  end
end
