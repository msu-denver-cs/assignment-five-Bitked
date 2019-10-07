require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    select("BYD", from: "Make")
    fill_in "Model", with: @car.model
    fill_in "Vin", with: 111111
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    select("Zenvo", from: "Make")    
    fill_in "Model", with: @car.model
    fill_in "Vin", with: 222222
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end






  # test "NOT creating a Car" do
  #   visit cars_url
  #   click_on "New Car"

  #   # select("BYD", from: "Make")
  #   fill_in "Model", with: 'a'
  #   fill_in "Vin", with: 'a'
  #   click_on "Create Car"

  #   assert_text "unprocessable_entity"
  #   click_on "Back"
  # end

  # test "NOT updating a Car" do
  #   visit cars_url
  #   click_on "Edit", match: :first

  #   # select("Zenvo", from: "Make")    
  #   fill_in "Model", with: 'a'
  #   fill_in "Vin", with: 'a'
  #   click_on "Update Car"

  #   assert_text "Car was successfully updated"
  #   click_on "Back"
  # end
end
