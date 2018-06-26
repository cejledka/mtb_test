require 'test_helper'

class CampSitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get camp_sites_index_url
    assert_response :success
  end

  test "should get show" do
    get camp_sites_show_url
    assert_response :success
  end

  test "should get new" do
    get camp_sites_new_url
    assert_response :success
  end

  test "should get create" do
    get camp_sites_create_url
    assert_response :success
  end

  test "should get edit" do
    get camp_sites_edit_url
    assert_response :success
  end

  test "should get update" do
    get camp_sites_update_url
    assert_response :success
  end

  test "should get delete" do
    get camp_sites_delete_url
    assert_response :success
  end

end
