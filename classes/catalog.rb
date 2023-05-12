require_relative '../modules/readandwrite'
require_relative './lable'
require_relative './music'
require_relative './author'
require_relative './book'
require_relative './game'
require_relative './genre'


class Catalog
  include Write

  def initialize
    @items = read_item('items.json')
    @genres = read_item('genres.json')
    @labels = read_item('labels.json')
    @authors = read_item('authors.json')
  end

  def add_item(item)
    @items << item
    write_to_file(@items,('./data/items.json'))
  end

  def add_genre(genre)
    @genres << genre
    write_to_file(@genres,('./data/genres.json'))
  end

  def add_label(label)
    @labels << label
    write_to_file(@labels,('./data/labels.json'))
  end

  def add_author(author)
    @authors << author
    write_to_file(@authors,('./data/authors.json'))
  end

  def create_author(first_name, last_name)
    Author.new(first_name, last_name)
  end

  def create_label(title, color)
    Label.new(title, color)
  end

  def create_genre(name)
    Genre.new(name)
  end

  def create_game(multiplayer, published_date = Time.new.strftime('%Y-%m-%d'),
                  last_played_at = Time.new.strftime('%Y-%m-%d'))
    Game.new(multiplayer, published_date, last_played_at)
  end

  def create_book(publisher, cover_state, published_date)
    Book.new(publisher, cover_state, published_date)
  end

  def create_music_album(on_spotify)
    MusicAlbum.new(on_spotify)
  end

  def list_authors
    @authors = read_item('./data/authors.json')
    @authors.each_with_index { |author, idx| puts "#{idx}) Name: #{author['first_name']} #{author['last_name']} " }
  end

  def list_labels
    @labels = read_item('./data/labels.json')
    @labels.each { |label| puts " #{label['title']}  color :#{label['color']}" }
  end

  def list_genres
    @genres = read_item('./data/genres.json')
    @genres.each { |genre| puts " #{genre['name']}  " }
  end

  def list_games
    @items = read_item('./data/items.json')
    games = @items.select { |item| item['class'] == 'Game' }
    if games.empty?
      puts 'No games to display'
    else
      @items.each do  |item|
        if item['class'] == 'Game'
          puts "id: #{item['id']} Multiplayer: #{item['multiplayer']} last played at :#{item['last_played_at']}"
        end
      end
    end
  end

  def list_books
    @items = read_item('./data/items.json')
    books = @items.select { |item| item['class'] == 'Book' }
   
    if books.empty?
      puts 'No books to display'
    else
      @items.each do |item|
        if item['class'] == 'Book'
          puts "id: #{item['id']} publisher: #{item['publisher']} published_date :#{item['published_date']} cover state :#{item['cover_state']}"
        end 
      end   
    
    end
  end

  def list_music_albums
    @items = read_item('./data/items.json')
    music_albums = @items.select { |item| item['class'] == 'MusicAlbum' }
    if music_albums.empty?
      puts 'No music_albums to display'
    else
      @items.each  do |item|
        puts "id: #{item['id']} on Spotify: #{item['on_spotify']}" if item['class'] == 'MusicAlbum'
      end
    end
  end
end
