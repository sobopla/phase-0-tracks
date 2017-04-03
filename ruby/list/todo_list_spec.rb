require_relative 'todo_list'

describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  # this will never work to rspec an instanciation
  # it "initializes list" do
  #   expect(TodoList.new(["apples", "oranges", "pears"])).to eq ["apples", "oranges", "pears"]
  # end

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end


  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do #tests get_item at the same time
    expect(list.get_item(0)).to eq "do the dishes"
  end
end
#test
