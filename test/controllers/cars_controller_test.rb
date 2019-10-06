require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { make_id: @car.make_id, model: @car.model, vin: 123456} }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should update car" do
    patch car_url(@car), params: { car: { make_id: @car.make_id, model: @car.model, vin: @car.vin } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end


  test "should find 111222" do
    get search_cars_url, params: { search: "111222" }
    assert_select 'td', '111222'
  end 

  test "should find 222111" do
    get search_cars_url, params: { search: "222333" }
    assert_select 'td', '222333'
  end 

  test "should find Ranger" do
    get search_cars_url, params: { search: "Ranger" }
    assert_select 'td', 'Rav4'
  end 

  test "should find Rav4" do
    get search_cars_url, params: { search: "Rav4" }
    assert_select 'td', 'Rav4'
  end 



  # needs assert
  # test "shouldn't find a model" do
  #   assert Car.where("model like ?", "NOT model")
  # end

  # test "shouldn't find a vin" do
  #   assert Car.where("model like ?", "NOT vin")
  # end

  # test "shouldn't find a make" do
  #   assert Car.where("make_id like ?", "NOT make_id")
  # end

  # test "searches always return 200" do
  #   get search_cars_url, params: { search: "DOESNT EXIST" }
  #   assert_equal 200, status
  # end

end
