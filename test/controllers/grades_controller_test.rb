require 'test_helper'

class GradesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grades_index_url
    assert_response :success
  end

  test "should get create" do
    get grades_create_url
    assert_response :success
  end

  test "should get new" do
    get grades_new_url
    assert_response :success
  end

end
