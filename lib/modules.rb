module Modules

  def remove_one
    @space += 1
    @objects.pop
  end

  def full?
    @space == 0 ? true : false
  end
end
