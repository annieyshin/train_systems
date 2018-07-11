require("pry")
class Traintime

attr_writer(:time)

  def initialize(attributes)
    @time = attributes.fetch(:time)
  end

  def self.all
    returned_times = DB.exec("SELECT * FROM stops;")
    times = []
    returned_times.each() do |stops|
      time = stops.fetch(:time => time)
      city_id = stops.fetch("city_id").to_i()
      train_id = stops.fetch("train_id").to_i()
      times.push({:train_id => train_id, :city_id => city_id, :time => time})
    end
    times
  end

  def save
    DB.exec("INSERT INTO stops (time) VALUES ('#{@time}');")
  end

end
