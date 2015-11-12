require_relative '../lib/dwelling'
require_relative '../lib/occupant'

class Apartment < Dwelling
  attr_reader :address, :city_or_town, :zip_code, :rent, :lease_start_date, :lease_end_date, :vacancies, :roomates

  def initialize(address, city_or_town, zip_code, rent, lease_start_date, lease_end_date)
    super(address, city_or_town, zip_code)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @vacancies = 4
    @roomates = []
  end

  def add_roomate(first_name, last_name)
    @vacancies -= 1
    if @vacancies > 0
      @roomates << Occupant.new(first_name, last_name)
    else
      "There are no vacancies"
    end
  end

  def remove_roomate
    @vacancies += 1
    @roomates.pop
  end

  def full?
    @vacancies == 0 ? true : false
  end
end
