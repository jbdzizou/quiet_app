require 'test_helper'

class InfosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get infos_create_url
    assert_response :success
  end

  test "should get edit" do
    get infos_edit_url
    assert_response :success
  end

end
