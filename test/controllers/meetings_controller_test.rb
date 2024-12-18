require "test_helper"

class MeetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meetings_index_url
    assert_response :success
  end

  test "should get new" do
    get meetings_new_url
    assert_response :success
  end

  test "should get create" do
    get meetings_create_url
    assert_response :success
  end
end
