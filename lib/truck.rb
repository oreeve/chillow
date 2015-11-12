require_relative '../lib/occupant'
require_relative '../lib/box'
require_relative '../lib/modules'

class Truck
  include Modules
  attr_reader :objects, :space

  def initialize
    @space = 5
    @objects = []
  end

  def add_box(first_name, last_name)
    @space -= 1
    @space <= 0 ? "No more boxes will fit!" : @objects << Box.new(first_name, last_name)
  end

  def remove_occupant_objects(first)
    @objects.delete_if {|box| box.owner.first_name == first}
  end
end
