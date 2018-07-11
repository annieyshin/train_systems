require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/rider")
require('./lib/city_operator')
require('./lib/train_operator')
require('./lib/time_operator')
require('./lib/cities')
require("pry")
require("pg")


DB = PG.connect({:dbname => "train_systems_test"})

get ('/') do
  erb(:input)
end

get ('/operator') do
  erb(:operator)
end

get ('/rider') do
  erb(:rider)
end

post ('/cities') do

  erb(:cities)
end

post ('/times') do

  erb(:times)
end

get ('/trains') do
  @train_names = Train.all()
  erb(:trains)
end

post ('/trains') do
  @train_name = params["train_name"]
  new_name = Train.new({:train_name => @train_name})
  new_name.save()
  frogs = DB.exec("SELECT * FROM train;")
  binding.pry
  erb(:trains)
end

get ('/getcities') do

  erb(:getcities)
end

get ('/gettimes') do

  erb(:gettimes)
end

get ('/gettrains') do
  @train_list = Train.all()
  erb(:gettrains)
end

post ('/ticket') do

  erb(:ticket)
end
