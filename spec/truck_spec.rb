require 'spec_helper'
require_relative '../lib/truck'

describe Truck do
  let(:truck) {truck = Truck.new}

  describe ".new" do
    it "creates an empty truck with a maximum of 20 boxes" do
      expect(truck).to be_a(Truck)
      expect(truck.space).to eq(5)
      expect(truck.objects).to be_a(Array)
    end
  end

  describe "#add_box" do
    it "adds a box with an owner to the truck" do
      truck.add_box("Andrew", "Clark")
      expect(truck.space).to eq (4)
    end

    it "won't add more if there is no space" do
      truck.add_box("Andrew", "Clark")
      truck.add_box("Andrew", "Clark")
      truck.add_box("Andrew", "Clark")
      truck.add_box("Andrew", "Clark")
      expect(truck.add_box("Andrew", "Clark")).to eq ("No more boxes will fit!")
    end
  end

  describe "#remove_box" do
    it "removes one box from the truck" do
    truck.add_box("Andrew", "Clark")
    truck.remove_one
    expect(truck.space).to eq (5)
    end
  end

  describe "#full?" do
    it "tells you if the truck has space" do
    expect(truck.full?).to be(false)
    end

    it "tells you the truck is full" do
      truck.add_box("Andrew", "Clark")
      truck.add_box("Andrew", "Clark")
      truck.add_box("Andrew", "Clark")
      truck.add_box("Andrew", "Clark")
      truck.add_box("Andrew", "Clark")
      expect(truck.full?).to be(true)
    end
  end

  describe "#remove_occupant_objects" do
    it "should remove boxes from a specific owner" do
      truck.add_box("Andrew", "Clark")
      truck.add_box("Andrew", "Clark")
      truck.add_box("Olivia", "Reeve")
      truck.remove_occupant_objects("Andrew")
      expect(truck.objects.count).to eq (1)
      expect(truck.objects).to_not be_empty
    end
  end
end
