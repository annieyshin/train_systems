require("rspec")
require("pg")
require("rider")
require('spec_helper')

describe(Rider) do
  describe(".train") do
    it("is empty at first") do
      expect(Rider.train()).to(eq([]))
    end
  end

  describe(".city") do
    it("is empty at first") do
      expect(Rider.city()).to(eq([]))
    end
  end

  describe(".time") do
    it("is empty at first") do
      expect(Rider.time()).to(eq([]))
    end
  end

  # describe(".city") do
  #   it("can look up a city") do
  #     expect(Rider.time()).to(eq([]))
  #   end
  # end
  #
  # describe(".time") do
  #   it("can look up a time") do
  #     expect(Rider.time()).to(eq([]))
  #   end
  # end
  # describe("#save") do
  #   it("adds a task to the array of saved tasks") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2018-07-15'})
  #     test_task.save()
  #     expect(Task.all()).to(eq([test_task]))
  #   end
  # end

  # describe("#description") do
  #   it("lets you read the description out") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2018-07-15'})
  #     expect(test_task.description()).to(eq("learn SQL"))
  #   end
  # end
  #
  # describe("#list_id") do
  #   it("lets you read the list ID out") do
  #     test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => '2018-07-15'})
  #     expect(test_task.list_id()).to(eq(1))
  #   end
  # end
  #
  # describe("#==") do
  #   it("is the same train if it has the same name and ID") do
  #     train1 = Train.new({:train_name => "Trainy McBoatface"})
  #     train2 = Train.new({:train_name => "Trainy McBoatface"})
  #     expect(train1).to(eq(train2))
  #   end
  # end
  #
  # describe('#sort') do
  #   it "sort tasks by their due date" do
  #     task1 = Task.new({:description => "do laundy", :list_id => 1, :due_date => '2018-07-15'})
  #     task1.save()
  #     task2 = Task.new({:description => "wash dishes", :list_id => 2, :due_date => '2018-07-01'})
  #     task2.save()
  #     task3 = Task.new({:description => "take out trash", :list_id => 3, :due_date => '2018-07-08'})
  #     task3.save()
  #     expect(Task.sort()).to(eq([task2, task3, task1]))
  #   end
  # end
end
