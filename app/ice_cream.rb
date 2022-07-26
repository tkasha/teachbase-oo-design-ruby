# frozen_string_literal: true

class IceCream
  def initialize
    self.open = false
    self.eaten = false
  end

  def open?
    open
  end

  def open!
    self.open = true
  end

  def eat!
    raise "Open first!" unless open?

    puts "Om nom nom"
    self.eaten = true
  end

  def eaten?
    eaten
  end

  private

  attr_accessor :open, :eaten
end
