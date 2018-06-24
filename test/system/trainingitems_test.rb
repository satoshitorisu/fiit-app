require "application_system_test_case"

class TrainingitemsTest < ApplicationSystemTestCase
  setup do
    @trainingitem = trainingitems(:one)
  end

  test "visiting the index" do
    visit trainingitems_url
    assert_selector "h1", text: "Trainingitems"
  end

  test "creating a Trainingitem" do
    visit trainingitems_url
    click_on "New Trainingitem"

    fill_in "Description", with: @trainingitem.description
    fill_in "Name", with: @trainingitem.name
    fill_in "Status", with: @trainingitem.status
    click_on "Create Trainingitem"

    assert_text "Trainingitem was successfully created"
    click_on "Back"
  end

  test "updating a Trainingitem" do
    visit trainingitems_url
    click_on "Edit", match: :first

    fill_in "Description", with: @trainingitem.description
    fill_in "Name", with: @trainingitem.name
    fill_in "Status", with: @trainingitem.status
    click_on "Update Trainingitem"

    assert_text "Trainingitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainingitem" do
    visit trainingitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainingitem was successfully destroyed"
  end
end
