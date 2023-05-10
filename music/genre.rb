class Genre
  attr_reader :id, :name

  def initialize(id, name)
    @id = id
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def 
end