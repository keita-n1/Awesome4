require 'test_helper'

class CoordinatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coordinates_index_url
    assert_response :success
  end

end
