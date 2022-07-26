# frozen_string_literal: true

require "./app/weather_predicter.rb"

RSpec.describe WeatherPredicter do
  subject(:predicter) do
    described_class.new(weather_reporter: weather_reporter)
  end

  let(:weather_reporter) { double }

  it "predicts weather" do
    allow(weather_reporter).to receive(:report)
      .and_return(*(1..10).to_a)

    expect(predicter.predict).to eq 5
  end
end
