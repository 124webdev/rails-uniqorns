require "test_helper"

class UniqornsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get uniqorns_index_url
    assert_response :success
  end
end
