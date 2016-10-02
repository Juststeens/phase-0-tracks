class TodoList

  def initialize(items)
  @items = items
  end

  def get_items
    @items
  end

  def add_item(item)
    @items.insert(-1, item)
  end

  def delete_item(item)
    @items.delete_if {|chore| chore == item}
  end

  def get_item(num)
    @items.fetch(num)
  end
end