# frozen_string_literal: true

class WeatherPredicter
  def initialize(weather_reporter:)
    @weather_reporter = weather_reporter
  end

  def predict
    temps = []

    10.times do |i|
      temps << weather_reporter.report
    end

    temps.sum / temps.size
  end

  private

  attr_reader :weather_reporter
end
