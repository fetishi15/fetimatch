require 'test_helper'

class UserProfsControllerTest < ActionController::TestCase
  setup do
    @user_prof = user_profs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_prof" do
    assert_difference('UserProf.count') do
      post :create, user_prof: { age: @user_prof.age, body_type: @user_prof.body_type, hobby: @user_prof.hobby, img: @user_prof.img, name: @user_prof.name, place: @user_prof.place, sex: @user_prof.sex, tall: @user_prof.tall, weight: @user_prof.weight }
    end

    assert_redirected_to user_prof_path(assigns(:user_prof))
  end

  test "should show user_prof" do
    get :show, id: @user_prof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_prof
    assert_response :success
  end

  test "should update user_prof" do
    patch :update, id: @user_prof, user_prof: { age: @user_prof.age, body_type: @user_prof.body_type, hobby: @user_prof.hobby, img: @user_prof.img, name: @user_prof.name, place: @user_prof.place, sex: @user_prof.sex, tall: @user_prof.tall, weight: @user_prof.weight }
    assert_redirected_to user_prof_path(assigns(:user_prof))
  end

  test "should destroy user_prof" do
    assert_difference('UserProf.count', -1) do
      delete :destroy, id: @user_prof
    end

    assert_redirected_to user_profs_path
  end
end
