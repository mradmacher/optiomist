# frozen_string_literal: true

require_relative './test_helper'

class OptiomistTest < Minitest::Test
  def test_some_shortcut
    some = Optiomist.some('x')
    assert some.is_a?(Optiomist::Some)
    assert_equal 'x', some.value
  end

  def test_none_shortcut
    none = Optiomist.none
    assert none.is_a?(Optiomist::None)
  end
end
