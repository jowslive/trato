require 'test_helper'

class EnrollmentControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get enrollment_create_url
    assert_response :success
  end

  test "should get destroy" do
    get enrollment_destroy_url
    assert_response :success
  end

end
