require_relative '../classes/genre'

describe 'Genre' do
  before(:all) do
    @genre = Genre.new('Jake')
    @items = []
  end

  describe 'initialize' do
    it 'initializes a genre with an id and name' do
      expect(@genre).to be_an_instance_of Genre
      expect(@genre.instance_variable_get(:@items)).to eq([])
    end
  end

  describe 'add_item' do
    let(:item) { double('item', genre: nil) }
    before do
      allow(item).to receive(:genre=).with(@genre).and_return(@genre)
    end
    it 'adds the item to the genre' do
      @genre.add_item(item)
      expect(@genre.instance_variable_get(:@items)).to include(item)
    end
  end
end
