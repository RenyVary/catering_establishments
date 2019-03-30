require 'test_helper'

class CateringEstabilishmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catering_estabilishments_index_url
    assert_response :success
  end

  test "should get new" do
    get catering_estabilishments_new_url
    assert_response :success
  end

  test "should get edit" do
    get catering_estabilishments_edit_url
    assert_response :success
  end

end
