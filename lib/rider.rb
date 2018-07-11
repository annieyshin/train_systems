require("pry")
class Rider

attr_reader(:train, :list_id, :departure_time)

  def initialize(attributes)
    @train = attributes.fetch(:train)
    @list_id = attributes.fetch(:list_id)
    @departure_time = attributes.fetch(:departure_time)
  end

  def self.all
    returned_trains = DB.exec("SELECT * FROM train;")
    trains = []
    returned_trains.each() do |train|
      train = trains.fetch("train")
      train_id = trains.fetch("id").to_i() # The information comes out of the database as a string.
      trains.push({:train => train, :train_id => train_id})
    end
    trains
  end
  #
  # def ==(another_task)
  #   self.description().==(another_task.description()).&(self.list_id().==(another_task.list_id()))
  # end
  #
  # def save
  #   DB.exec("INSERT INTO tasks (description, list_id, due_date) VALUES ('#{@description}', #{@list_id}, '#{@due_date}');")
  # end
  #
  # def self.sort
  #   returned_sorted_lists = DB.exec("SELECT * FROM tasks ORDER BY due_date;")
  #   @lists = []
  #   returned_sorted_lists.each() do |list|
  #     description = list.fetch("description")
  #     list_id = list.fetch("list_id").to_i()
  #     due_date = list.fetch("due_date")
  #     @lists.push(Task.new({:description => description, :list_id => list_id, :due_date => due_date}))
  #   end
  #   @lists
  # end

end
