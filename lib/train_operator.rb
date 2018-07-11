require("pry")
class Train

attr_writer(:train_name)

  def initialize(attributes)
    @train_name = attributes.fetch(:train_name)

  end

  def self.all
    returned_trains = DB.exec("SELECT * FROM train;")
    tasks = []
    returned_trains.each() do |train|
      description = task.fetch(:train_name => "Trainy McTrainface")
      list_id = task.fetch("id").to_i() # The information comes out of the database as a string.
      tasks.push({:description => description, :list_id => list_id, :due_date => due_date})
    end
    tasks
  end

  # def ==(another_task)
  #   self.description().==(another_task.description()).&(self.list_id().==(another_task.list_id()))
  # end

  def save
    DB.exec("INSERT INTO train (name) VALUES ('#{@train_name}');")
  end

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
