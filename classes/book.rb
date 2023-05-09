require_relative 'item'
class Book < Item
  attr_accessor :cover_state, :publisher, :published_date

  def initialize(id, genre, author, source, label, cover_state, publisher,
                 published_date)
    super(id, genre, author, source, label, published_date)
    @cover_state = cover_state
    @publisher = publisher
  end

  def can_be_archived?
    return true if @cover_state == 'bad'
    return super if defined?(super)

    false
  end
end
