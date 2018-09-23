require 'test_helper'

class Admins::TunesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_tunes_new_url
    assert_response :success
  end

  test "should get index" do
    get admins_tunes_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_tunes_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_tunes_edit_url
    assert_response :success
  end

end
