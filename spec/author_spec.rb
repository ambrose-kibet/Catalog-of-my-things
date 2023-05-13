require_relative '../classes/author'
require_relative '../classes/item'

RSpec.describe Author do
  let(:author) { Author.new('John', 'Doe') }

  describe '#add_item' do
    let(:item) { Item.new }

    it 'adds the input item to the collection of items' do
      author.add_item(item)
      expect(author.items).to include(item)
    end

    it 'sets the author property of the input item to self' do
      author.add_item(item)
      expect(item.author).to eq(author)
    end

    it 'does not add the same item to the collection of items twice' do
      author.add_item(item)
      author.add_item(item)
      expect(author.items.count(item)).to eq(1)
    end
  end
end
