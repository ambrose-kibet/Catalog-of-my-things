class Item
  attr_reader :id, :archived
  attr_accessor :genre, :author, :label, :publish_date

  def initialize(genre, author, label, published_date)
    @id = rand(1..1000)
    @genre = genre
    @author = author
    @label = label
    @published_date = published_date
    @archived = false
  end


  def move_to_archived
    if can_be_archived?
      @archived = true
      puts 'Item has been archieved'
    else
      puts 'Item has not been moved to archieved'
    end
    @archived = can_be_archived?
  end


  def can_be_archived?
    publish_year = @publish_date.year
    current_year = Date.current.year
    age_in_years = current_year - publish_year
    age_in_years > 10
    Date.today > Date.iso8601(@publish_date).next_year(10)
  end

  private :can_be_archived?
end
