require_relative '../lib/dwelling'
require_relative '../lib/occupant'
require_relative '../lib/modules'

class Apartment < Dwelling
  include Modules
  attr_reader :address, :city_or_town, :zip_code, :rent, :lease_start_date, :lease_end_date, :space, :objects

  def initialize(address, city_or_town, zip_code, rent, lease_start_date, lease_end_date)
    super(address, city_or_town, zip_code)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @space = 5
    @objects = []
  end

  def add_roomate(first_name, last_name)
    @space -= 1
    @space <= 0 ? "There is no space" : @objects << Occupant.new(first_name, last_name)
  end

end
