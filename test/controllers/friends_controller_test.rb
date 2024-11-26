require "test_helper"

class FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get friends_index,_url
    assert_response :success
  end

  test "should get create," do
    get friends_create,_url
    assert_response :success
  end

  test "should get destroy" do
    get friends_destroy_url
    assert_response :success
  end
end
