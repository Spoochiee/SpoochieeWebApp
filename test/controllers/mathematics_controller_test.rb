require "test_helper"

class MathematicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mathematic = mathematics(:one)
  end

  test "should get index" do
    get mathematics_url
    assert_response :success
  end

  test "should get new" do
    get new_mathematic_url
    assert_response :success
  end

  test "should create mathematic" do
    assert_difference('Mathematic.count') do
      post mathematics_url, params: { mathematic: { description: @mathematic.description, due_date: @mathematic.due_date, teacher: @mathematic.teacher } }
    end

    assert_redirected_to mathematic_url(Mathematic.last)
  end

  test "should show mathematic" do
    get mathematic_url(@mathematic)
    assert_response :success
  end

  test "should get edit" do
    get edit_mathematic_url(@mathematic)
    assert_response :success
  end

  test "should update mathematic" do
    patch mathematic_url(@mathematic), params: { mathematic: { description: @mathematic.description, due_date: @mathematic.due_date, teacher: @mathematic.teacher } }
    assert_redirected_to mathematic_url(@mathematic)
  end

  test "should destroy mathematic" do
    assert_difference('Mathematic.count', -1) do
      delete mathematic_url(@mathematic)
    end

    assert_redirected_to mathematics_url
  end
end
