class Movie
  attr_reader :silent

  def initialize(silent, *args)
    super(*args)
    @silent = silent
  end

  def can_be_archived?
    if super && @silent
      true
    else
      false
    end
  end
end
