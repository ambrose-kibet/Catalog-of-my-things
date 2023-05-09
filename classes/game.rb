class Game
  attr_reader :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, id, genre, author, source, label, published_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super(id, genre, author, source, label, published_date)
  end
end
