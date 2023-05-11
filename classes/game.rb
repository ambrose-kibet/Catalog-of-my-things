require_relative '../item'
require 'date'
class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, published_date = Time.new.strftime('%Y-%m-%d'),
                 last_played_at = Time.new.strftime('%Y-%m-%d'))
    super()
    @multiplayer = multiplayer
    @published_date = published_date
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && (Date.parse(@last_played_at).year < Date.today.year - 2)
  end
end
