# frozen_string_literal: true

require "./app/ice_cream.rb"

RSpec.describe IceCream do
  subject(:ice_cream) { described_class.new }

  it "is packed" do
    expect(ice_cream).not_to be_open
  end

  it "opens" do
    ice_cream.open!
    expect(ice_cream).to be_open
  end

  it "can't be eaten before opening" do
    expect { ice_cream.eat! }.to raise_error(
      RuntimeError, "Open first!"
    )
  end

  it { is_expected.not_to be_eaten }

  it "can be eaten" do
    ice_cream.open!
    ice_cream.eat!
    expect(ice_cream).to be_eaten
  end
end
