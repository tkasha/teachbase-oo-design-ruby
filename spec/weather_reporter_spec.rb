# frozen_string_literal: true

require "./app/weather_reporter.rb"

RSpec.describe WeatherReporter do
  subject(:reporter) { described_class.new }

  it "returns temp" do
    expect(reporter.report).to be_a Integer
  end
end
