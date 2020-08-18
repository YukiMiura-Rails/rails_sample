require 'test_helper'


class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
    @user = users(:michael)
  end
  
  test "should get new" do
    get signup_path
    assert_response :success
    assert_select "title", "Sign up | #{@base_title}"

  end
  
  test "should get edit" do
    get edit_user_path(@user)
    assert_response :success
    assert_select "title", "Edit user | #{@base_title}"

  end
  

  

end
