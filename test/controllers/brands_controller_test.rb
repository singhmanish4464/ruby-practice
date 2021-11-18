require "test_helper"

class BrandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get brands_index_url
    assert_response :success
  end

  test "should get form" do
    get brands_form_url
    assert_response :success
  end

  test "should get create" do
    get brands_create_url
    assert_response :success
  end

  test "should get edit" do
    get brands_edit_url
    assert_response :success
  end

  test "should get update" do
    get brands_update_url
    assert_response :success
  end

  test "should get destroy" do
    get brands_destroy_url
    assert_response :success
  end
end
