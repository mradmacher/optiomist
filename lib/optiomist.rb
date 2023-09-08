# frozen_string_literal: true

require 'singleton'

# Defines optional values.
module Optiomist
  # There is some value.
  # Warning: +nil+ is also treated as a correct value.
  #
  # Example:
  #   >> result = Optiomist.some('x')
  #   >> result.some?
  #   => true
  #   >> result.value
  #   => 'x'
  class Some
    # This is the value.
    attr_reader :value

    def initialize(value)
      @value = value
    end

    # It's +true+.
    def some?
      true
    end

    # It's +false+.
    def none?
      false
    end
  end

  # There is no value.
  #
  # Example:
  #   >> result = Optiomist.none
  #   >> result.none?
  #   => true
  class None
    include Singleton

    # Should it really respond to +nil?+
    def nil?
      true
    end

    # It's +false+.
    def some?
      false
    end

    # It's +true+.
    def none?
      true
    end
  end

  # A shortcut to create +Option::Some+ for given +value+.
  def self.some(value)
    Some.new(value)
  end

  # A shortcut to get +Option::None+.
  def self.none
    None.instance
  end
end
