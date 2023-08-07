require 'test_helper'

class LibrariesControllerTest < ActionDispatch::IntegrationTest
  test "index response" do
    get libraries_url
    assert_response :success

    # Optional: Check the response body or format if needed
    libraries = JSON.parse(response.body)
    assert_kind_of Array, libraries
    assert_not_empty libraries
  end
end
