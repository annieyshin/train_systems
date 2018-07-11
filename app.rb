require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/operator")
require("./lib/rider")
require("pry")
require("pg")


DB = PG.connect({:dbname => "to_do"})

get ('/') do
  erb(:input)
end

get ('/operator') do
  erb(:operator)
end

get ('/rider') do
  erb(:rider)
end
#
# post ('/crud_cities.erb') do
#
#   erb(:crud_cities.erb)
# end
#
# post ('/crud_times.erb') do
#
#   erb(:crud_times.erb)
# end
#
# post ('/crud_trains.erb') do
#
#   erb(:crud_trains.erb)
# end
#
# get ('/view_cities') do
#
#   erb(:view_cities)
# end
#
# get ('/view_times') do
#
#   erb(:view_times)
# end
#
# get ('/view_trains') do
#
#   erb(:view_trains)
# end
#
# post ('/crud_ticket') do
#
#   erb(:crud_ticket)
# end
