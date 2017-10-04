require 'test_helper'

class PerosonsControllerTest < ActionDispatch::IntegrationTest
  test "should get insurance_form" do
    get perosons_insurance_form_url
    assert_response :success
  end

end
