require 'helper'

describe 'Music' do
  
    describe 'Methods' do
      subject { FixMyTags::Music.new "artist - title.mp3" }

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

    describe 'Music Format "artist - title.ext"' do
      subject { FixMyTags::Music.new "i am the artist - title of the track.ext" }

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
