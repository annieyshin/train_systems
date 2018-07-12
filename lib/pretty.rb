require('pry')
class Sortanice

  def initialize()
    all_data = DB.exec("SELECT * FROM city, train, stops;")
    all_data
  end

  # def initialize()
  #   all_data = DB.exec("SELECT train.* FROM city
  #   JOIN stops ON (city.id = stops.id_city)
  #   JOIN train ON (stops.id_train = train.id);")
  #   binding.pry
  #   all_data
  # end

end

# SELECT ZzZzZz.* FROM 0000000
# JOIN join_of_zz00 ON (0000000.id = join_of_zz00.0000000_id)
# JOIN ZzZzZz ON (join_of_zz00.ZzZzZz_id = ZzZzZz.id)
# WHERE 0000000.id = 1;

# SELECT cities.* FROM friends
# JOIN cities_friends ON (friends.id = cities_friends.friend_id)
# JOIN cities ON (cities_friends.city_id = cities.id)
# WHERE friends.id = 1;
