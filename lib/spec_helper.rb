require("rspec")
require("pg")
require("rider")
require("operator")
require("pry")
require("train_operator")

DB = PG.connect({:dbname => "train_systems_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM train *;")
    DB.exec("DELETE FROM stops *;")
    DB.exec("DELETE FROM city *;")
  end
end
