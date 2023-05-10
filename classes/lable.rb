class Label
  attr_reader :id, :items

  def initialize(id, title, color)
    @id = id || rand(1..1000)
    @title = title
    @color = color
    @items = []
  end
end
