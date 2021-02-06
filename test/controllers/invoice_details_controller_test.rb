require 'test_helper'

class InvoiceDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get invoice_details_index_url
    assert_response :success
  end

  test "should get edit" do
    get invoice_details_edit_url
    assert_response :success
  end

  test "should get create" do
    get invoice_details_create_url
    assert_response :success
  end

  test "should get show" do
    get invoice_details_show_url
    assert_response :success
  end

  test "should get update" do
    get invoice_details_update_url
    assert_response :success
  end

  test "should get delete" do
    get invoice_details_delete_url
    assert_response :success
  end

end
