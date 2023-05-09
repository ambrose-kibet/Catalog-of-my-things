require_relative './item'
require 'date'

class Game < Item
  attr_reader :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, id, genre, author, source, label, published_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
    super(id, genre, author, source, label, published_date)
  end

  def can_be_archived?
    super and (Date.today.year - Date.parse(@last_played_at).year > 2)
  end
end
