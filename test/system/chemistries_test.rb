require "application_system_test_case"

class ChemistriesTest < ApplicationSystemTestCase
  setup do
    @chemistry = chemistries(:one)
  end

  test "visiting the index" do
    visit chemistries_url
    assert_selector "h1", text: "Chemistries"
  end

  test "creating a Chemistry" do
    visit chemistries_url
    click_on "New Chemistry"

    fill_in "Description", with: @chemistry.description
    fill_in "Due date", with: @chemistry.due_date
    fill_in "Teacher", with: @chemistry.teacher
    click_on "Create Chemistry"

    assert_text "Chemistry was successfully created"
    click_on "Back"
  end

  test "updating a Chemistry" do
    visit chemistries_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chemistry.description
    fill_in "Due date", with: @chemistry.due_date
    fill_in "Teacher", with: @chemistry.teacher
    click_on "Update Chemistry"

    assert_text "Chemistry was successfully updated"
    click_on "Back"
  end

  test "destroying a Chemistry" do
    visit chemistries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chemistry was successfully destroyed"
  end
end
