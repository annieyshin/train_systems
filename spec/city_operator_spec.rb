require("rspec")
require("pg")
require("city_operator")
require('spec_helper')

describe(City) do
  describe("#save") do
    it("adds new city") do
      new_city = City.new({:city_name => "Fresno"})
      new_city.save()
      city_input = DB.exec("SELECT * FROM city WHERE city = 'Fresno';")
      expect(city_input.first["city"]).to(include("Fresno"))
    end
  end
end
