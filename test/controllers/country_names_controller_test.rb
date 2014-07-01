require 'test_helper'

class CountryNamesControllerTest < ActionController::TestCase
  setup do
    @country_name = country_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:country_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create country_name" do
    assert_difference('CountryName.count') do
      post :create, country_name: { code: @country_name.code, name: @country_name.name }
    end

    assert_redirected_to country_name_path(assigns(:country_name))
  end

  test "should show country_name" do
    get :show, id: @country_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @country_name
    assert_response :success
  end

  test "should update country_name" do
    patch :update, id: @country_name, country_name: { code: @country_name.code, name: @country_name.name }
    assert_redirected_to country_name_path(assigns(:country_name))
  end

  test "should destroy country_name" do
    assert_difference('CountryName.count', -1) do
      delete :destroy, id: @country_name
    end

    assert_redirected_to country_names_path
  end
end
