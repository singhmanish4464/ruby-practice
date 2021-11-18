require "test_helper"

class QuantitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quantities_index_url
    assert_response :success
  end

  test "should get form" do
    get quantities_form_url
    assert_response :success
  end

  test "should get create" do
    get quantities_create_url
    assert_response :success
  end

  test "should get update" do
    get quantities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get quantities_destroy_url
    assert_response :success
  end
end
