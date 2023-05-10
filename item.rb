class item
  def initialize(id, genre, author, source, label, published_date, archived)
    @id = id
    @genre = genre
    @author = author
    @source = source
    @label = label
    @published_date = published_date
    @archived = archived
  end

  def moved_to_archieved

  end

  private

  def can_be_archived?

  end
end