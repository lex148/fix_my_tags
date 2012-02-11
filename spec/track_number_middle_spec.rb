require 'helper'

FILENAME = "./random/folders/i am_the_artist_ - 35-_title_of_the_track.ext" 


describe 'Music::TrackNumberMiddle' do
  
    describe 'Methods' do
      subject { FixMyTags::Music::TrackNumberMiddle.new FILENAME }

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
      subject { FixMyTags::Music::TrackNumberMiddle }
      it 'must have match?' do 
        subject.must_respond_to :match?
      end
    end



    describe 'Music Format "artist - title.ext"' do
      subject { FixMyTags::Music::TrackNumberMiddle.new FILENAME }

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
