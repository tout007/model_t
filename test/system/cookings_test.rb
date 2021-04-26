require "application_system_test_case"

class CookingsTest < ApplicationSystemTestCase
  setup do
    @cooking = cookings(:one)
  end

  test "visiting the index" do
    visit cookings_url
    assert_selector "h1", text: "Cookings"
  end

  test "creating a Cooking" do
    visit cookings_url
    click_on "New Cooking"

    check "Active" if @cooking.active
    fill_in "Receipe", with: @cooking.receipe
    fill_in "Title", with: @cooking.title
    click_on "Create Cooking"

    assert_text "Cooking was successfully created"
    click_on "Back"
  end

  test "updating a Cooking" do
    visit cookings_url
    click_on "Edit", match: :first

    check "Active" if @cooking.active
    fill_in "Receipe", with: @cooking.receipe
    fill_in "Title", with: @cooking.title
    click_on "Update Cooking"

    assert_text "Cooking was successfully updated"
    click_on "Back"
  end

  test "destroying a Cooking" do
    visit cookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cooking was successfully destroyed"
  end
end
