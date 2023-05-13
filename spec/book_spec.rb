require_relative '../classes/book'

describe Book do
  before :each do
    @book = Book.new('The Great Gastby', 'bad', '2012-04-03')
  end

  it 'should be an instance of Book class' do
    expect(@book).to be_an_instance_of(Book)
  end

  it 'should be able to be archived' do
    can_be_archived = @book.send(:can_be_archived?)
    expect(can_be_archived).to eq(true)
  end
end
