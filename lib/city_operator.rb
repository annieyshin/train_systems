require("pry")
class City

attr_writer(:city_name)

  def initialize(attributes)
    @city_name = attributes.fetch(:city_name)

  end

  def self.all
    returned_cities = DB.exec("SELECT * FROM city;")
    cities = []
    returned_cities.each() do |city|
      city_name = city.fetch(:city => city)
      city_id = city.fetch("id").to_i() # The information comes out of the database as a string.
      cities.push({:city => city_name})
    end
    cities
  end

  def save
    DB.exec("INSERT INTO city (city) VALUES ('#{@city_name}');")
  end


end
