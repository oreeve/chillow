require_relative '../lib/occupant'
require_relative '../lib/box'
require 'pry'

class Truck
  attr_reader :boxes, :box_space

  def initialize
    @box_space = 5
    @boxes = []
  end

  def add_box(first_name, last_name)
    @box_space -= 1
    @box_space <= 0 ? "No more boxes will fit!" : @boxes << Box.new(first_name, last_name)
  end

  def remove_box
    @box_space += 1
    @boxes.pop
  end

  def remove_occupant_boxes(first)
    @boxes.delete_if {|box| box.owner.first_name == first}
  end

  def full?
    @box_space == 0 ? true : false
  end
end

truck = Truck.new

# binding.pry
