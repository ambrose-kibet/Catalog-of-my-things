class Item
  attr_reader :id, :archived
  attr_accessor :genre, :author, :source, :label, :published_date
  
  def initialize()
    @id = rand(1..1000)
    @genre = nil
    @author = nil
    @source = nil
    @label = nil
    @published_date = nil
    @archived = false
  end

  def can_be_archived?
    return false if @published_date.nil?
    Date.today.year - Date.parse(@published_date).year > 10
  end

  def moved_to_archieved
    @archived = true if can_be_archived?
  end
end
