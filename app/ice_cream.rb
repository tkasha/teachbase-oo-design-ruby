# frozen_string_literal: true

require "forwardable"
require "./app/foil_packege.rb"

class IceCream
  extend Forwardable

  def initialize
    self.packege = FoilPackege.new
    self.eaten = false
  end

  def_delegators :packege, :open?, :open!

  def eat!
    raise "Open first!" unless open?

    puts "Om nom nom"
    self.eaten = true
  end

  def eaten?
    eaten
  end

  private

  attr_accessor :packege, :eaten
end
