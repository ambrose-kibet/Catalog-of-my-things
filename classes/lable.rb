class Label
  attr_accessor :title, :color, :items, :id

  def initialize(id, title, color)
    @id = id || rand(1..1000)
    @title = title
    @color = color
    @items = []
  end
end
