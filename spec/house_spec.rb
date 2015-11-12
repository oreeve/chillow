require 'spec_helper'
require_relative '../lib/house'

describe House do
  let(:house) {house = House.new("35 Swan Rd", "Winchester, MA", "01890", "$1,000,000")}

  describe ".new" do
    it "creates a house with an address, city_or_town, zip_code, and asking_price" do
      expect(house).to be_a(House)
      expect(house.address).to eq("35 Swan Rd")
      expect(house.city_or_town).to eq("Winchester, MA")
      expect(house.zip_code).to eq("01890")
      expect(house.asking_price).to eq ("$1,000,000")
    end
  end
end
