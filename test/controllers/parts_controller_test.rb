require 'test_helper'

class PartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part = parts(:one)
  end

  test "should get index" do
    get parts_url
    assert_response :success
  end

  test "should get new" do
    get new_part_url
    assert_response :success
  end

  test "should show part" do
    get part_url(@part)
    assert_response :success
  end

  test "should get edit" do
    get edit_part_url(@part)
    assert_response :success
  end

  test "should create part" do
    assert_difference('Part.count') do
      post parts_url, params: { part: { part: @part.part } }
    end
    assert_redirected_to part_url(Part.last)
  end

  test "should update part" do
    patch part_url(@part), params: { part: { part: @part.part } }
    assert_redirected_to part_url(@part)
  end

  test "should destroy part" do
    assert_difference('Part.count', -1) do
      delete part_url(@part)
    end
    assert_redirected_to parts_url
  end


  test "should find p1" do
    get search_parts_url, params: { search: "p1" }
    assert_select 'td', 'p1'
  end 

  test "should find p2" do
    get search_parts_url, params: { search: "p2" }
    assert_select 'td', 'p2'
  end 

  # needs assert
  test "shouldn't find a Part" do
    assert Part.where("part like ?", "NOT part")
  end

  test "searches always return 200" do
    get search_parts_url, params: { search: "DOESNT EXIST" }
    assert_equal 200, status
  end

end
