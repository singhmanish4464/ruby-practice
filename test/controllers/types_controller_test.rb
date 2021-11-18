require "test_helper"

class TypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get types_index_url
    assert_response :success
  end

  test "should get form" do
    get types_form_url
    assert_response :success
  end

  test "should get create" do
    get types_create_url
    assert_response :success
  end

  test "should get update" do
    get types_update_url
    assert_response :success
  end

  test "should get destroy" do
    get types_destroy_url
    assert_response :success
  end
end
