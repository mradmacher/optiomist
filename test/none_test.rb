# frozen_string_literal: true

require_relative './test_helper'

class NoneTest < Minitest::Test
  def test_none_is_none
    none = Optiomist::None.instance
    assert none.none?
  end

  def test_none_is_not_some
    none = Optiomist::None.instance
    refute none.some?
  end
end
