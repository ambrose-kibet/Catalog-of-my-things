require_relative './classes/app'
require_relative './classes/catalog'

def start
  catalog = Catalog.new
  app = App.new(catalog)
  loop do
    app.list_options
    value = gets.chomp
    case value
    when '1'
      app.handle_one
    when '2'
      app.handle_two
    when '3'
      app.handle_three
    when '4'
      app.handle_four
    when '5'
      app.handle_five
    when '6'
      app.handle_six
    when '7'
      app.handle_seven
    when '8'
      app.handle_eight
    when '9'
      app.handle_nine
    when '10'
      app.handle_ten
      break
    else
      puts 'please select a valid option'
    end
  end
end

start
