class App
  def initialize(catalog)
    @catalog = catalog
  end

  def list_options
   
    puts 'welcome to school catalog of my thinngs app!'
    puts
    20.times do
      print '--'
    end
    puts
    puts 'please choose an option by entering a number:'
    puts '1 - list all books'
    puts '2 - list all music albums'
    puts '3 - list all games'
    puts '4 - list all genres (e.g \'Comedy\', \'Thriller\')'
    puts '5 - list all labels(e.g. \'Gift\', \'New\')'
    puts '6 - list all authors (e.g. \'Stephen King\')'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Add a game'
    puts '10 - exit'
  end

  def handle_one
    @catalog.list_books
  end

  def handle_two
    @catalog.list_music_albums
  end

  def handle_three
    @catalog.list_games
  end

  def handle_four
    @catalog.list_genres
  end

  def handle_five
    @catalog.list_labels
  end

  def handle_six
    @catalog.list_authors
  end

  def handle_seven
    puts 'Enter publisher name'
    publisher = gets.chomp
    puts 'what is the cover state \'good\' or \'bad\''
    cover_state = gets.chomp
    puts 'Enter publish date \'yyyy-mm-dd\''
    published_date = gets.chomp
    new_book = @catalog.create_book(publisher, cover_state, published_date)
    puts 'Authors first name'
    first_name = gets.chomp
    puts 'Authors last name'
    last_name = gets.chomp
    new_author = @catalog.create_author(first_name, last_name)
    puts 'books genre'
    name = gets.chomp
    new_genre = @catalog.create_genre(name)
    puts 'label (e.g. \'Gift\', \'New\')'
    title = gets.chomp
    puts 'label color (e.g. \'blue\', \'red\')'
    color = gets.chomp
    new_label = @catalog.create_label(title, color)
    new_book.add_author(new_author)
    new_book.add_label(new_label)
    new_book.add_genre(new_genre)

    @catalog.add_item(new_book)
    @catalog.add_genre(new_genre)
    @catalog.add_label(new_label)
    @catalog.add_author(new_author)
  end

  def handle_eight
    puts 'on spotify y/n '
    publisher = gets.chomp.downcase
   if publisher=='y'
    publisher=true
   else
    publisher=false
   end
    new_album = @catalog.create_music_album(publisher)
    puts 'Authors first name'
    first_name = gets.chomp
    puts 'Authors last name'
    last_name = gets.chomp
    new_author = @catalog.create_author(first_name, last_name)
    puts 'Music albums genre'
    name = gets.chomp
    new_genre = @catalog.create_genre(name)
    puts 'label (e.g. \'Gift\', \'New\')'
    title = gets.chomp
    puts 'label color (e.g. \'blue\', \'red\')'
    color = gets.chomp
    new_label = @catalog.create_label(title, color)
    new_album.add_author(new_author)
    new_album.add_label(new_label)
    new_album.add_genre(new_genre)
    @catalog.add_item(new_album)
    @catalog.add_genre(new_genre)
    @catalog.add_label(new_label)
    @catalog.add_author(new_author)
  end

  def handle_nine
    puts 'Is multiplayer y/n '
      multiplayer = gets.chomp.downcase
    if multiplayer=='y'
      multiplayer=true
    else
      multiplayer=false
    end
    puts 'Enter publish date \'yyyy-mm-dd\''
    published_date = gets.chomp
    puts 'Enter lastplayed at date \'yyyy-mm-dd\''
    last_played_at = gets.chomp
    new_game = @catalog.create_game(multiplayer,published_date,last_played_at)
    puts 'Authors first name'
    first_name = gets.chomp
    puts 'Authors last name'
    last_name = gets.chomp
    new_author = @catalog.create_author(first_name, last_name)
    puts 'Game genre'
    name = gets.chomp
    new_genre = @catalog.create_genre(name)
    puts 'label (e.g. \'Gift\', \'New\')'
    title = gets.chomp
    puts 'label color (e.g. \'blue\', \'red\')'
    color = gets.chomp
    new_label = @catalog.create_label(title, color)
    new_game.add_author(new_author)
    new_game.add_label(new_label)
    new_game.add_genre(new_genre)
    @catalog.add_item(new_game)
    @catalog.add_genre(new_genre)
    @catalog.add_label(new_label)
    @catalog.add_author(new_author)
  end

  def handle_ten
    20.times do
      print '--'
    end
    puts
    puts 'Thank you for using the App!'
   
    20.times do
      print '--'
    end

    exit
  end
end
