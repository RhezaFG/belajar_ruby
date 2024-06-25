require "test_helper"

class CobacobaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cobacoba_index_url
    assert_response :success
  end
end
