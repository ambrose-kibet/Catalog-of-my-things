require_relative './item'

class Book < Item
  attr_accessor :publisher, :cover_state
  attr_reader :ppublished_date

  def initialize(publisher, cover_state, published_date)
    super()
    @publisher = publisher
    @cover_state = cover_state
    @published_date = published_date
  end

  def to_h
    { class: self.class.name,
      object_id: object_id,
      id: @id,
      publisher: @publisher,
      cover_state: @cover_state,
      genre: @genre,
      author: @author,
      label: @label,
      archived: @archived }
  end

  private

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
