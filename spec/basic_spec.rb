require 'helper'

describe 'Music' do
  
    describe 'Methods' do
      subject { FixMyTags::Music::Basic.new "./random/folders/artist - title.mp3" }

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
      subject { FixMyTags::Music::Basic }
      
      it 'must have match?' do 
        subject.must_respond_to :match?
      end

    end


    describe 'Music Format "artist - title.ext" match' do
      subject { FixMyTags::Music::Basic }

      it 'must match format' do
        (subject.match? "artist name - title name.ext").must_equal true
      end

      it 'must not match format' do
        (subject.match? "artist_name_-_title_name.ext").must_equal false
      end

    end

    describe 'Music Format "artist - title.ext"' do
      subject { FixMyTags::Music::Basic.new "./random/folders/i am the artist - title of the track.ext" }

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
