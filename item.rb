class item
  attr_reader :id, :archived

  def initialize(id, genre, author, source, label, published_date, archived = false)
    @id = id
    @genre = genre
    @author = author
    @source = source
    @label = label
    @published_date = published_date
    @archived = archived
  end

  def moved_to_archieved
    if self.can_be_archived?
      @archived = true
    end
  end

  private

  def can_be_archived?
    if @published_date > 10
      true
    else
      false
    end
  end
end