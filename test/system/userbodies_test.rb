require "application_system_test_case"

class UserbodiesTest < ApplicationSystemTestCase
  setup do
    @userbody = userbodies(:one)
  end

  test "visiting the index" do
    visit userbodies_url
    assert_selector "h1", text: "Userbodies"
  end

  test "creating a Userbody" do
    visit userbodies_url
    click_on "New Userbody"

    fill_in "Bodyfat", with: @userbody.bodyfat
    fill_in "Date", with: @userbody.date
    fill_in "Weight", with: @userbody.weight
    click_on "Create Userbody"

    assert_text "Userbody was successfully created"
    click_on "Back"
  end

  test "updating a Userbody" do
    visit userbodies_url
    click_on "Edit", match: :first

    fill_in "Bodyfat", with: @userbody.bodyfat
    fill_in "Date", with: @userbody.date
    fill_in "Weight", with: @userbody.weight
    click_on "Update Userbody"

    assert_text "Userbody was successfully updated"
    click_on "Back"
  end

  test "destroying a Userbody" do
    visit userbodies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userbody was successfully destroyed"
  end
end
