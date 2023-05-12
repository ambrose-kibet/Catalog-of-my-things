class Genre
  attr_reader :id
  attr_accessor :name, :items

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item.name)
    item.genre = self
  end

  def to_h
    { class: self.class.name,
      object_id: object_id,
      id: @id,
      name: @name,
      items: @items }
  end
end
