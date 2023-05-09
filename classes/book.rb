class Book
  attr_accessor :cover_state, :publisher, :published_date

  def initialize(id, genre, author, source, label, cover_state, publisher,
                 published_date)
    super(id, genre, author, source, label, published_date)
    @cover_state = cover_state
    @publisher = publisher
  end
end
