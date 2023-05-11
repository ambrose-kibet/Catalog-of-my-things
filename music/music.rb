require './item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(on_spotify)
    super()
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    return true if super && on_spotify
  end
end
