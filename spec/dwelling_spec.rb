require 'spec_helper'
require_relative '../lib/dwelling'

describe Dwelling do
  let(:dwelling) {dwelling = Dwelling.new("35 Swan Rd", "Winchester, MA", "01890")}

  describe ".new" do
    it "creates a dwelling with an address, city_or_town, and zip_code" do
      expect(dwelling).to be_a(Dwelling)
      expect(dwelling.address).to eq("35 Swan Rd")
      expect(dwelling.city_or_town).to eq("Winchester, MA")
      expect(dwelling.zip_code).to eq("01890")
    end
  end
end
