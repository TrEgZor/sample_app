require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @baseTitle = "Rails Sample App"
  end
  test "should get signup" do
    get signup_path
    assert_select 'title', "Sign Up | #{@baseTitle}"
    assert_response :success
  end

end
