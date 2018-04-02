require 'test_helper'

class ProposalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get proposals_index_url
    assert_response :success
  end

  test "should get show" do
    get proposals_show_url
    assert_response :success
  end

  test "should get new" do
    get proposals_new_url
    assert_response :success
  end

  test "should get create" do
    get proposals_create_url
    assert_response :success
  end

  test "should get edit" do
    get proposals_edit_url
    assert_response :success
  end

  test "should get update" do
    get proposals_update_url
    assert_response :success
  end

end
