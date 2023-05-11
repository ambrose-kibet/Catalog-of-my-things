require_relative '../item'

class Book < Item
  attr_accessor :publisher, :cover_state
  attr_reader :publish_date

  def initialize(publisher, cover_state, _published_date)
    super()
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
