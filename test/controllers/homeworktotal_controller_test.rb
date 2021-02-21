require "test_helper"

class HomeworktotalControllerTest < ActionDispatch::IntegrationTest
  test "should get total" do
    get homeworktotal_total_url
    assert_response :success
  end
end
