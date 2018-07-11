require("rspec")
require("pg")
require("rider")
require("pry")
require("train_operator")
require("city_operator")
require("time_operator")
require("cities")

DB = PG.connect({:dbname => "train_systems_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM train *;")
    DB.exec("DELETE FROM stops *;")
    DB.exec("DELETE FROM city *;")
  end
end
