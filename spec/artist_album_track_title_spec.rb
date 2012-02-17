require 'helper'

FILENAME = "/home/lex/Music/i am the artist/album name here/03 title of the track.ext"


describe 'Music::ArtistAlbumTrackTitle' do
  
    describe 'Methods' do
      subject { FixMyTags::Music::ArtistAlbumTrackTitle.new FILENAME }

      it 'must have name' do
        subject.must_respond_to :name
      end
      
      it 'must have artist' do
        subject.must_respond_to :artist
      end
      
      it 'must have title' do
        subject.must_respond_to :title
      end
      
      it 'must have filetype' do
        subject.must_respond_to :filetype
      end

    end

    describe 'Methods' do
      subject { FixMyTags::Music::ArtistAlbumTrackTitle }
      it 'must have match?' do 
        subject.must_respond_to :match?
      end
    end



    describe 'Music Format' do
      subject { FixMyTags::Music::ArtistAlbumTrackTitle.new FILENAME }

      it 'must identify the artist' do
        subject.artist.must_equal 'i am the artist'
      end

      it 'must identify the title' do
        subject.title.must_equal 'title of the track'
      end

      it 'must identify the extention' do
        subject.filetype.must_equal 'ext'
      end

    end

end
