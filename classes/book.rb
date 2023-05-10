class Book
  attr_accessor :cover_state, :publisher, :published_date

  def initialize(publisher)
    super(id, genre, author, label, published_date)
    @cover_state = cover_state
    @publisher = publisher
  end
end
