# frozen_string_literal: true

require "./app/ice_cream_factory.rb"

class IceCreamDummy
end

RSpec.describe IceCreamFactory do
  subject(:factory) do
    described_class.new(
      weather_predicter: wp,
      product: IceCreamDummy
    )
  end

  let(:wp) { double }
  let(:temp) { 20 }

  before do
    allow(wp).to receive(:predict).and_return(temp)
  end

  describe "#produce!" do
    subject(:output) do
      factory.produce!(quantity: 9)
    end

    it "produces ice cream" do
      expect(output.first).to be_an IceCreamDummy
    end

    describe "quantity" do
      subject(:count) { output.size }

      context "when temp between 10 and 30 degrees" do
        it { is_expected.to eq 9 }
      end

      context "when temp is lower than 10 degrees" do
        let(:temp) { 9 }

        it { is_expected.to eq 4 }
      end

      context "when temp is higher than 30 degrees" do
        let(:temp) { 31 }

        it { is_expected.to eq 13 }
      end
    end
  end
end
