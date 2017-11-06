require 'test_helper'

class EditarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get editar_index_url
    assert_response :success
  end

  test "should get show" do
    get editar_show_url
    assert_response :success
  end

end
