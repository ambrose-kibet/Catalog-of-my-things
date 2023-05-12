require_relative './item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(on_spotify)
    super()
    @on_spotify = on_spotify
  end

  def to_h
    { class: self.class.name,
      object_id: object_id,
      id: @id,
      on_spotify: @on_spotify,
      publish_date: @publish_date,
      genre: @genre,
      author: @author,
      source: @source,
      label: @label,
      archived: @archived }
  end

  private

  def can_be_archived?
    return true if super && on_spotify
  end
end
