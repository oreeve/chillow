require 'spec_helper'
require_relative '../lib/apartment'

describe Apartment do
  let(:apartment) {apartment = Apartment.new("35 Swan Rd", "Winchester, MA", "01890", "$1,000,000", "1/1/2016", "1/1/2017")}

  describe ".new" do
    it "creates a apartment with an address, city_or_town, zip_code, rent, lease_start_date, and lease_end_date" do
      expect(apartment).to be_a(Apartment)
      expect(apartment.address).to eq("35 Swan Rd")
      expect(apartment.city_or_town).to eq("Winchester, MA")
      expect(apartment.zip_code).to eq("01890")
      expect(apartment.rent).to eq ("$1,000,000")
      expect(apartment.lease_start_date).to eq("1/1/2016")
      expect(apartment.lease_end_date).to eq("1/1/2017")
      expect(apartment.vacancies).to eq(4)
    end
  end

  describe "#add_roomate" do
    it "adds an occupant to the apartment" do
      apartment.add_roomate("Andrew", "Clark")
      expect(apartment.vacancies).to eq(3)
    end

    it "does not add an occupant if there are no vacancies" do
      apartment.add_roomate("Andrew", "Clark")
      apartment.add_roomate("Andrew", "Clark")
      apartment.add_roomate("Andrew", "Clark")
      apartment.add_roomate("Andrew", "Clark")
      expect(apartment.add_roomate("Andrew", "Clark")).to eq("There are no vacancies")
    end
  end

  describe "#remove_roomate" do
    it "removes an occupant from the apartment" do
      apartment.add_roomate("Andrew", "Clark")
      apartment.remove_roomate
      expect(apartment.vacancies).to eq(4)
    end
  end

  describe "#full?" do
    it "shows there are no vacancies" do
      apartment.add_roomate("Andrew", "Clark")
      apartment.add_roomate("Andrew", "Clark")
      apartment.add_roomate("Andrew", "Clark")
      apartment.add_roomate("Andrew", "Clark")
      expect(apartment.full?).to eq(true)
    end

    it "shows there are vacancies" do
      apartment.add_roomate("Andrew", "Clark")
      expect(apartment.full?).to eq(false)
    end
  end

end
