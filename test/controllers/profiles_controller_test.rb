require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { category_id: @profile.category_id, desk: @profile.desk, image: @profile.image, image_2: @profile.image_2, image_3: @profile.image_3, image_4: @profile.image_4, image_5: @profile.image_5, imagetype: @profile.imagetype, name: @profile.name, price: @profile.price, prof: @profile.prof }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { category_id: @profile.category_id, desk: @profile.desk, image: @profile.image, image_2: @profile.image_2, image_3: @profile.image_3, image_4: @profile.image_4, image_5: @profile.image_5, imagetype: @profile.imagetype, name: @profile.name, price: @profile.price, prof: @profile.prof }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
