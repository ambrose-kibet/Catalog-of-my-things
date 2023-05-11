class Item
  attr_reader :id, :archived
  attr_accessor :genre, :author, :source, :label, :published_date

  def initialize(genre, author, source, label, published_date)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @published_date = published_date
    @archived = false
  end

  def moved_to_archieved
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    @published_date > 10
  end
end
