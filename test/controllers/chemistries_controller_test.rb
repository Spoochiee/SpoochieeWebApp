require "test_helper"

class ChemistriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chemistry = chemistries(:one)
  end

  test "should get index" do
    get chemistries_url
    assert_response :success
  end

  test "should get new" do
    get new_chemistry_url
    assert_response :success
  end

  test "should create chemistry" do
    assert_difference('Chemistry.count') do
      post chemistries_url, params: { chemistry: { description: @chemistry.description, due_date: @chemistry.due_date, teacher: @chemistry.teacher } }
    end

    assert_redirected_to chemistry_url(Chemistry.last)
  end

  test "should show chemistry" do
    get chemistry_url(@chemistry)
    assert_response :success
  end

  test "should get edit" do
    get edit_chemistry_url(@chemistry)
    assert_response :success
  end

  test "should update chemistry" do
    patch chemistry_url(@chemistry), params: { chemistry: { description: @chemistry.description, due_date: @chemistry.due_date, teacher: @chemistry.teacher } }
    assert_redirected_to chemistry_url(@chemistry)
  end

  test "should destroy chemistry" do
    assert_difference('Chemistry.count', -1) do
      delete chemistry_url(@chemistry)
    end

    assert_redirected_to chemistries_url
  end
end
