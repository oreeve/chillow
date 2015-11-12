class Dwelling
  attr_reader :address, :city_or_town, :zip_code

  def initialize(address, city_or_town, zip_code)
    @address = address
    @city_or_town = city_or_town
    @zip_code = zip_code
  end
end
