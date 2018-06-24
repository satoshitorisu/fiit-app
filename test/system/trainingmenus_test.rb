require "application_system_test_case"

class TrainingmenusTest < ApplicationSystemTestCase
  setup do
    @trainingmenu = trainingmenus(:one)
  end

  test "visiting the index" do
    visit trainingmenus_url
    assert_selector "h1", text: "Trainingmenus"
  end

  test "creating a Trainingmenu" do
    visit trainingmenus_url
    click_on "New Trainingmenu"

    fill_in "Date", with: @trainingmenu.date
    click_on "Create Trainingmenu"

    assert_text "Trainingmenu was successfully created"
    click_on "Back"
  end

  test "updating a Trainingmenu" do
    visit trainingmenus_url
    click_on "Edit", match: :first

    fill_in "Date", with: @trainingmenu.date
    click_on "Update Trainingmenu"

    assert_text "Trainingmenu was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainingmenu" do
    visit trainingmenus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainingmenu was successfully destroyed"
  end
end
