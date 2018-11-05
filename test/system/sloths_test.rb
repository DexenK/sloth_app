require "application_system_test_case"

class SlothsTest < ApplicationSystemTestCase
  setup do
    @sloth = sloths(:one)
  end

  test "visiting the index" do
    visit sloths_url
    assert_selector "h1", text: "Sloths"
  end

  test "creating a Sloth" do
    visit sloths_url
    click_on "New Sloth"

    fill_in "Color", with: @sloth.color
    fill_in "Fluffiness", with: @sloth.fluffiness
    fill_in "Paws", with: @sloth.paws
    click_on "Create Sloth"

    assert_text "Sloth was successfully created"
    click_on "Back"
  end

  test "updating a Sloth" do
    visit sloths_url
    click_on "Edit", match: :first

    fill_in "Color", with: @sloth.color
    fill_in "Fluffiness", with: @sloth.fluffiness
    fill_in "Paws", with: @sloth.paws
    click_on "Update Sloth"

    assert_text "Sloth was successfully updated"
    click_on "Back"
  end

  test "destroying a Sloth" do
    visit sloths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sloth was successfully destroyed"
  end
end
