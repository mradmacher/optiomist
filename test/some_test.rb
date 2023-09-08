# frozen_string_literal: true

require_relative './test_helper'

class SomeTest < Minitest::Test
  def test_some_is_some
    some = Optiomist::Some.new('x')
    assert some.some?
  end

  def test_some_is_not_none
    some = Optiomist::Some.new('x')
    refute some.none?
  end

  def test_some_has_value
    some = Optiomist::Some.new('x')
    assert_equal 'x', some.value
  end

  def test_some_can_have_nil_value
    some = Optiomist::Some.new(nil)
    assert_nil some.value
  end
end
