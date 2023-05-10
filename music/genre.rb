class Genre
  attr_reader :id, :name

  def initialize(id, _name)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
  end
end
