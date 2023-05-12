class Item
  attr_reader :id, :archived
  attr_accessor :genre, :author, :source, :label, :published_date

  def initialize()
    @id = rand(1..1000)
    @genre = nil
    @author = nil
    @label = nil
    @published_date = nil
    @archived = false
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def can_be_archived?
    return false if @published_date.nil?

    Date.today.year - Date.parse(@published_date).year > 10
  end

  def moved_to_archieved
    if can_be_archived?
      @archived = true
      puts 'Item has been archieved'
    else
      puts 'Item has not been moved to archieved'
    end
    @archived = can_be_archived?
  end

  private :can_be_archived?
end
