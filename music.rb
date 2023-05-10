class MusicAlbum
  attr_reader :on_spotify

  def initialize(on_spotify, *args)
    super(*args)
    @on_spotify = on_spotify
  end

  private
  
  def can_be_achived?
    return true if super && on_spotify
  end
end