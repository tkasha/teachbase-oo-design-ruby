# frozen_string_literal: true

require "./app/foil_packege.rb"

RSpec.describe FoilPackege do
  subject(:foil_packege) { described_class.new }

  it { is_expected.not_to be_open }

  it "can open" do
    foil_packege.open!
    is_expected.to be_open
  end
end
