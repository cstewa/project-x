require 'test_helper'

class StandardsControllerTest < ActionController::TestCase
  setup do
    @standard = standards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standard" do
    assert_difference('Standard.count') do
      post :create, standard: { description: @standard.description, grade: @standard.grade, standard: @standard.standard, subject: @standard.subject, topic: @standard.topic }
    end

    assert_redirected_to standard_path(assigns(:standard))
  end

  test "should show standard" do
    get :show, id: @standard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standard
    assert_response :success
  end

  test "should update standard" do
    put :update, id: @standard, standard: { description: @standard.description, grade: @standard.grade, standard: @standard.standard, subject: @standard.subject, topic: @standard.topic }
    assert_redirected_to standard_path(assigns(:standard))
  end

  test "should destroy standard" do
    assert_difference('Standard.count', -1) do
      delete :destroy, id: @standard
    end

    assert_redirected_to standards_path
  end
end
