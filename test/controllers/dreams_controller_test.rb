require 'test_helper'

class DreamsControllerTest < ActionController::TestCase
  setup do
    @dream = dreams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dreams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dream" do
    assert_difference('Dream.count') do
      post :create, dream: { date: @dream.date, entry: @dream.entry, image_url: @dream.image_url, user_id: @dream.user_id }
    end

    assert_redirected_to dream_path(assigns(:dream))
  end

  test "should show dream" do
    get :show, id: @dream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dream
    assert_response :success
  end

  test "should update dream" do
    patch :update, id: @dream, dream: { date: @dream.date, entry: @dream.entry, image_url: @dream.image_url, user_id: @dream.user_id }
    assert_redirected_to dream_path(assigns(:dream))
  end

  test "should destroy dream" do
    assert_difference('Dream.count', -1) do
      delete :destroy, id: @dream
    end

    assert_redirected_to dreams_path
  end
end
