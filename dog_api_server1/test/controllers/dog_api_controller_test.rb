require 'test_helper'

class DogApiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dog_api_index_url
    assert_response :success
  end

  test "should get show" do
    get dog_api_show_url
    assert_response :success
  end

end
