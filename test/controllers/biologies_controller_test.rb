require "test_helper"

class BiologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biology = biologies(:one)
  end

  test "should get index" do
    get biologies_url
    assert_response :success
  end

  test "should get new" do
    get new_biology_url
    assert_response :success
  end

  test "should create biology" do
    assert_difference('Biology.count') do
      post biologies_url, params: { biology: { description: @biology.description, due_date: @biology.due_date, teacher: @biology.teacher } }
    end

    assert_redirected_to biology_url(Biology.last)
  end

  test "should show biology" do
    get biology_url(@biology)
    assert_response :success
  end

  test "should get edit" do
    get edit_biology_url(@biology)
    assert_response :success
  end

  test "should update biology" do
    patch biology_url(@biology), params: { biology: { description: @biology.description, due_date: @biology.due_date, teacher: @biology.teacher } }
    assert_redirected_to biology_url(@biology)
  end

  test "should destroy biology" do
    assert_difference('Biology.count', -1) do
      delete biology_url(@biology)
    end

    assert_redirected_to biologies_url
  end
end
