require "application_system_test_case"

class PartsTest < ApplicationSystemTestCase
  setup do
    @part = parts(:one)
  end

  test "visiting the index" do
    visit parts_url
    assert_selector "h1", text: "Parts"
  end

  test "creating a Part" do
    visit parts_url
    click_on "New Part"

    fill_in "Part", with: @part.part
    click_on "Create Part"

    assert_text "Part was successfully created"
    click_on "Back"
  end

  test "updating a Part" do
    visit parts_url
    click_on "Edit", match: :first

    fill_in "Part", with: @part.part
    click_on "Update Part"

    assert_text "Part was successfully updated"
    click_on "Back"
  end

  test "destroying a Part" do
    visit parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Part was successfully destroyed"
  end

  # test "search doesn't exist" do
  #   visit parts_url
  #   fill_in "Search", with: "NOT EXIST"
  #   click_on "Search"
  #   refute_selector "td"
  # end

  # test "search part" do
  #   visit parts_url
  #   fill_in "query", with: "p1"
  #   click_on "Search"
  #   assert_selector "td", text: "p1"
  # end
end
