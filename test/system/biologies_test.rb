require "application_system_test_case"

class BiologiesTest < ApplicationSystemTestCase
  setup do
    @biology = biologies(:one)
  end

  test "visiting the index" do
    visit biologies_url
    assert_selector "h1", text: "Biologies"
  end

  test "creating a Biology" do
    visit biologies_url
    click_on "New Biology"

    fill_in "Description", with: @biology.description
    fill_in "Due date", with: @biology.due_date
    fill_in "Teacher", with: @biology.teacher
    click_on "Create Biology"

    assert_text "Biology was successfully created"
    click_on "Back"
  end

  test "updating a Biology" do
    visit biologies_url
    click_on "Edit", match: :first

    fill_in "Description", with: @biology.description
    fill_in "Due date", with: @biology.due_date
    fill_in "Teacher", with: @biology.teacher
    click_on "Update Biology"

    assert_text "Biology was successfully updated"
    click_on "Back"
  end

  test "destroying a Biology" do
    visit biologies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Biology was successfully destroyed"
  end
end
