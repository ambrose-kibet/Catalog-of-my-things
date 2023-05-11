require_relative './classes/game'
require 'date'

game = Game.new(true, '2009-01-01', '2019-01-01')

puts game.can_be_archived?
