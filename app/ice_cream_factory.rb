# frozen_string_literal: true

class IceCreamFactory
  attr_reader :product, :weather_predicter

  def initialize(weather_predicter:, product:)
    @weather_predicter = weather_predicter
    @product = product
  end

  def produce!(quantity:)
    [].tap do |output|
      final_quantity(quantity).times do
        output << product.new
      end
    end
  end

  private

  def final_quantity(quantity)
    (quantity * ratio).to_i
  end

  def ratio
    temp = weather_predicter.predict

    if temp < 10
      0.5
    elsif temp > 30
      1.5
    else
      1
    end
  end
end
