require 'test_helper'

class PartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "for one character name" do
    s = Part.create({:part => "a"})
    refute s.valid?
    refute s.save
    assert_equal({:part=>["is too short (minimum is 2 characters)"]},
      s.errors.messages)
  end

  test "for two character name" do
    s = Part.create({:part => "aa"})
    assert s.valid?
    assert s.save
    assert_equal({}, s.errors.messages)
  end


end
