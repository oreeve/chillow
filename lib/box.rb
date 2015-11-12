require_relative '../lib/occupant'

class Box
  attr_accessor :owner, :first_name, :last_name

  def initialize(first_name, last_name)
    @owner = Occupant.new(first_name, last_name)
  end
end
