class Author
  attr_reader :id, :items
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @id = Random.rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    item.author = self
    @items << item unless @items.include?(item)
  end

  def to_h
    { class: self.class.name,
      object_id: object_id,
      id: @id,
      first_name: @first_name,
      last_name: @last_name,
      items: @items }
  end
end
