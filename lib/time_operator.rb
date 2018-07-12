require("pry")
class Traintime

attr_writer(:time)
attr_reader(:id_city, :id_train)

  def initialize(attributes)
    @time = attributes.fetch(:time)
    @id_city = attributes.fetch(:id_city)
    @id_train = attributes.fetch(:id_train)
  end

  def self.all
    returned_times = DB.exec("SELECT * FROM stops;")
    times = []
    returned_times.each() do |stops|
      time = stops.fetch(:time => time)
      city_id = stops.fetch(:id_city).to_i()
      train_id = stops.fetch(:id_train).to_i()
      times.push({:train_id => train_id, :city_id => city_id, :time => time})
    end
    times
  end

  def save
    DB.exec("INSERT INTO stops (time, id_city, id_train) VALUES ('#{@time}', '#{@id_city}', '#{@id_train}');")
  end

end
