require_relative 'item'

class Label
  attr_accessor :title, :color
  attr_reader :id, :items
  attr_accessor :title, :items, :id, :color

  def initialize(id, title, color)
    @id = id || Random.rand(1..1000)
  def initialize(title, color)
    @id = rand(1..1000)
    @title = title
    @color = color
    @items = []
  end
  def add_item(item)
    @items.push(item)
    item.label = self
  end
end