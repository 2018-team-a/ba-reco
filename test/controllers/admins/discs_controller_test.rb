require 'test_helper'

class Admins::DiscsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_discs_new_url
    assert_response :success
  end

  test "should get create" do
    get admins_discs_create_url
    assert_response :success
  end

  test "should get index" do
    get admins_discs_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_discs_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_discs_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_discs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_discs_destroy_url
    assert_response :success
  end

end
