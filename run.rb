# frozen_string_literal: true

require "./app/ice_cream_factory.rb"
require "./app/weather_predicter.rb"
require "./app/weather_reporter.rb"
require "./app/ice_cream.rb"

ice_cream_factory = IceCreamFactory.new(
  weather_predicter: WeatherPredicter.new(weather_reporter: WeatherReporter.new),
  product: IceCream
)

output = ice_cream_factory.produce!(quantity: 9)

puts "Today we produce #{output.size} ice creams"
