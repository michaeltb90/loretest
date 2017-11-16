require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_results" do
    get search_search_results_url
    assert_response :success
  end

end
