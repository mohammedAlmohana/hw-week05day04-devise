require "application_system_test_case"

class Cars1sTest < ApplicationSystemTestCase
  setup do
    @cars1 = cars1s(:one)
  end

  test "visiting the index" do
    visit cars1s_url
    assert_selector "h1", text: "Cars1s"
  end

  test "creating a Cars1" do
    visit cars1s_url
    click_on "New Cars1"

    fill_in "Model", with: @cars1.model
    fill_in "Name", with: @cars1.name
    fill_in "User", with: @cars1.user_id
    fill_in "Year", with: @cars1.year
    click_on "Create Cars1"

    assert_text "Cars1 was successfully created"
    click_on "Back"
  end

  test "updating a Cars1" do
    visit cars1s_url
    click_on "Edit", match: :first

    fill_in "Model", with: @cars1.model
    fill_in "Name", with: @cars1.name
    fill_in "User", with: @cars1.user_id
    fill_in "Year", with: @cars1.year
    click_on "Update Cars1"

    assert_text "Cars1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Cars1" do
    visit cars1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cars1 was successfully destroyed"
  end
end
