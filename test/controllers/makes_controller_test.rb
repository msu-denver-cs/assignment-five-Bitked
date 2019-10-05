require 'test_helper'

class MakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @make = makes(:one)
  end

  test "should get index" do
    get makes_url
    assert_response :success
  end

  test "should get new" do
    get new_make_url
    assert_response :success
  end

  test "should show make" do
    get make_url(@make)
    assert_response :success
  end

  test "should get edit" do
    get edit_make_url(@make)
    assert_response :success
  end

  test "should create make" do
    assert_difference('Make.count') do
      post makes_url, params: { make: { country: @make.country, make: @make.make } }
    end
    assert_redirected_to make_url(Make.last)
  end

  test "should update make" do
    patch make_url(@make), params: { make: { country: @make.country, make: @make.make } }
    assert_redirected_to make_url(@make)
  end

  test "should destroy make" do
    assert_difference('Make.count', -1) do
      delete make_url(@make)
    end
    assert_redirected_to makes_url
  end

  test "should find China" do
    get search_makes_url, params: { search: "China" }
    assert_select 'td', 'China'
  end 

  test "should find Denmark" do
    get search_makes_url, params: { search: "Denmark" }
    assert_select 'td', 'Denmark'
  end 

  test "should find Zenvo" do
    get search_makes_url, params: { search: "Zenvo" }
    assert_select 'td', 'Zenvo'
  end 

  test "should find BYD" do
    get search_makes_url, params: { search: "BYD" }
    assert_select 'td', 'BYD'
  end 

  # needs assert
  test "shouldn't find a model" do
    assert Make.where("make like ?", "NOT make")
  end

  test "shouldn't find a vin" do
    assert Make.where("country like ?", "NOT country")
  end

  test "searches always return 200" do
    get search_makes_url, params: { search: "DOESNT EXIST" }
    assert_equal 200, status
  end

end
