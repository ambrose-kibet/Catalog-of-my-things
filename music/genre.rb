require './item'

class Genre < Item
  attr_reader :id
  attr_accessor :name

  def initialize(id, _name)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.genre = self
  end
end
