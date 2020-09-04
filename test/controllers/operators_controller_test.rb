require 'test_helper'

class OperatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get loginChk" do
    get operators_loginChk_url
    assert_response :success
  end

end
