require "application_system_test_case"

class MakesTest < ApplicationSystemTestCase
  setup do
    @make = makes(:one)
  end

  test "visiting the index" do
    visit makes_url
    assert_selector "h1", text: "Makes"
  end

  test "creating a Make" do
    visit makes_url
    click_on "New Make"

    fill_in "Country", with: @make.country
    fill_in "Make", with: @make.make
    click_on "Create Make"

    assert_text "Make was successfully created"
    click_on "Back"
  end

  test "updating a Make" do
    visit makes_url
    click_on "Edit", match: :first

    fill_in "Country", with: @make.country
    fill_in "Make", with: @make.make
    click_on "Update Make"

    assert_text "Make was successfully updated"
    click_on "Back"
  end

  test "destroying a Make" do
    visit makes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Make was successfully destroyed"
  end

  # test "search doesn't exist" do
  #   visit makes_url
  #   fill_in "Search", with: "NOT EXIST"
  #   click_on "Search"
  #   refute_selector "td"
  # end

  # test "search make" do
  #   visit makes_url
  #   fill_in "Search", with: "BYD"
  #   click_on "Search"
  #   assert_selector "td", text: "BYD"
  # end
end
