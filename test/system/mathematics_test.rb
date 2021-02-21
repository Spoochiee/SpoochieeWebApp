require "application_system_test_case"

class MathematicsTest < ApplicationSystemTestCase
  setup do
    @mathematic = mathematics(:one)
  end

  test "visiting the index" do
    visit mathematics_url
    assert_selector "h1", text: "Mathematics"
  end

  test "creating a Mathematic" do
    visit mathematics_url
    click_on "New Mathematic"

    fill_in "Description", with: @mathematic.description
    fill_in "Due date", with: @mathematic.due_date
    fill_in "Teacher", with: @mathematic.teacher
    click_on "Create Mathematic"

    assert_text "Mathematic was successfully created"
    click_on "Back"
  end

  test "updating a Mathematic" do
    visit mathematics_url
    click_on "Edit", match: :first

    fill_in "Description", with: @mathematic.description
    fill_in "Due date", with: @mathematic.due_date
    fill_in "Teacher", with: @mathematic.teacher
    click_on "Update Mathematic"

    assert_text "Mathematic was successfully updated"
    click_on "Back"
  end

  test "destroying a Mathematic" do
    visit mathematics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mathematic was successfully destroyed"
  end
end
