require 'test_helper'

class QuietsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quiets_index_url
    assert_response :success
  end

  test "should get show" do
    get quiets_show_url
    assert_response :success
  end

  test "should get new" do
    get quiets_new_url
    assert_response :success
  end

  test "should get edit" do
    get quiets_edit_url
    assert_response :success
  end

end
