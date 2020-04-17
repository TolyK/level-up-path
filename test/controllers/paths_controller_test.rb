require 'test_helper'

class PathsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paths_index_url
    assert_response :success
  end

  test "should get show" do
    get paths_show_url
    assert_response :success
  end

  test "should get new" do
    get paths_new_url
    assert_response :success
  end

  test "should get edit" do
    get paths_edit_url
    assert_response :success
  end

end
