require 'spec_helper'
require_relative '../lib/box'
require_relative '../lib/occupant'

describe Box do
  let(:box) {box = Box.new("Andrew", "Clark")}

 describe ".new" do
   it "creates a box with first and last name" do
    expect(box).to be_a(Box)
    expect(box.owner).to be_a(Occupant)
  end
 end
end
