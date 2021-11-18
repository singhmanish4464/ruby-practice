require "test_helper"

class StuffsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stuffs_index_url
    assert_response :success
  end

  test "should get form" do
    get stuffs_form_url
    assert_response :success
  end

  test "should get create" do
    get stuffs_create_url
    assert_response :success
  end

  test "should get edit" do
    get stuffs_edit_url
    assert_response :success
  end

  test "should get update" do
    get stuffs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get stuffs_destroy_url
    assert_response :success
  end
end
