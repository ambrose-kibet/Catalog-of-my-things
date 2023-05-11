require './music/music'

describe 'MusicAlbum' do
  before(:all) do
    @musicalbum = MusicAlbum.new(false)
  end

  context 'initialize class' do
    it 'should create an instance of the music album class' do
      expect(@musicalbum).to be_an_instance_of MusicAlbum
      expect(@musicalbum.on_spotify).to eq(false)
    end
  end
end
