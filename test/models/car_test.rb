require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "for two character model" do
    s = Car.create({:model => "aa"})
    assert s.valid?
    assert s.save
    assert_equal({}, s.errors.messages)
  end

  # test "for 6 character vin" do
  #   s = Car.create({:vin => "123456"})
  #   assert s.valid?
  #   assert s.save
  #   assert_equal({}, s.errors.messages)
  # end


end
