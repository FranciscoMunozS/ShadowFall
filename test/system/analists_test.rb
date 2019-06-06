require "application_system_test_case"

class AnalistsTest < ApplicationSystemTestCase
  setup do
    @analist = analists(:one)
  end

  test "visiting the index" do
    visit analists_url
    assert_selector "h1", text: "Analists"
  end

  test "creating a Analist" do
    visit analists_url
    click_on "New Analist"

    fill_in "Name", with: @analist.name
    click_on "Create Analist"

    assert_text "Analist was successfully created"
    click_on "Back"
  end

  test "updating a Analist" do
    visit analists_url
    click_on "Edit", match: :first

    fill_in "Name", with: @analist.name
    click_on "Update Analist"

    assert_text "Analist was successfully updated"
    click_on "Back"
  end

  test "destroying a Analist" do
    visit analists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analist was successfully destroyed"
  end
end
