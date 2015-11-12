require 'spec_helper'
require_relative '../lib/occupant'

describe Occupant do
  let(:occupant) {occupant = Occupant.new("Andrew", "Clark")}

 describe ".new" do
   it "creates an occupant with first and last name" do
    expect(occupant).to be_a(Occupant)
    expect(occupant.first_name).to eq("Andrew")
    expect(occupant.last_name).to eq("Clark")
  end
 end

end
