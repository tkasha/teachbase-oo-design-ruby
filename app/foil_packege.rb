# frozen_string_literal: true

class FoilPackege
  def initialize
    self.open = false
  end

  def open?
    open
  end

  def open!
    self.open = true
  end

  private

  attr_accessor :open
end
