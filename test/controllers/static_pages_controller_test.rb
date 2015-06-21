require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get ebobc" do
    get :ebobc
    assert_response :success
  end

  test "should get mission" do
    get :mission
    assert_response :success
  end

  test "should get projects" do
    get :projects
    assert_response :success
  end

end
