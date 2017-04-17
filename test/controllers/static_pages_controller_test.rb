require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @baseTitle = "Rails Sample App"
  end
  test "should get home" do
    get root_path
    assert_select "title", "#{@baseTitle}"
    assert_response :success
  end


  test "should get help" do
    get help_path
    assert_select "title", "Help | #{@baseTitle}"
    assert_response :success
  end
  test "should get about" do
    get about_path
    assert_select "title", "About | #{@baseTitle}"
    assert_response :success
  end

  test "should get contact" do
    get contact_path
    assert_select "title" , "Contact | #{@baseTitle}"
    assert_response :success
  end
end
