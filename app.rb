require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/rider")
require('./lib/city_operator')
require('./lib/train_operator')
require('./lib/time_operator')
require('./lib/cities')
require('./lib/pretty')
require("pry")
require("pg")


DB = PG.connect({:dbname => "train_systems_test"})

get ('/') do
  @all = Sortanice.new()
  erb(:input)
end

get ('/operator') do
  erb(:operator)
end

get ('/rider') do
  erb(:rider)
end

get ('/cities') do
  @city_names = City.all()
  erb(:cities)
end

post ('/cities') do
  @city_name = params["city_name"]
  new_city_name = City.new({:city_name => @city_name})
  new_city_name.save()
  redirect to('/cities')
end

get ('/times') do
  @train_names = Train.all()
  @city_names = City.all()
  erb(:times)
end

post ('/times') do
  @train_time = params["train_time"]
  @id_city = params["city_drop"]
  @id_train = params["train_drop"]
  eta = Traintime.new({:time => @train_time, :id_city => @id_city, :id_train => @id_train})
  eta.save()
  redirect to('/times')
end

get ('/trains') do
  @train_names = Train.all()
  erb(:trains)
end

post ('/trains') do
  @train_name = params["train_name"]
  new_name = Train.new({:train_name => @train_name})
  new_name.save()
  redirect to('/trains')
end

get ('/getcities') do

  erb(:getcities)
end

get ('/gettimes') do

  erb(:gettimes)
end

get ('/gettrains') do
  @train_list = Train.all()
  erb(:trains)
end

post ('/ticket') do

  erb(:ticket)
end
