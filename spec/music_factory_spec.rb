require 'helper'

describe 'MusicFinder' do

  describe 'Building' do
    subject {FixMyTags::MusicFactory }

    it 'should build basic' do
      music = subject.build './random/folder/artist - title.ext'
      music.must_be_instance_of FixMyTags::Music::Basic
    end

    it 'should build underscore' do
      music = subject.build './random/folder/artist_-_title.ext'
      music.must_be_instance_of FixMyTags::Music::Underscore
    end

    it 'should build track_number_middle' do
      music = subject.build './random/folder/artist_d - 354 - title_anem .ext'
      music.must_be_instance_of FixMyTags::Music::TrackNumberMiddle
    end

    it 'should build artist_album_track_title' do
      music = subject.build '/home/lex/Music/Sting/Fields Of Gold_ The Best Of Sting 1984-1994/03 Fields Of Gold.mp3'
      music.must_be_instance_of FixMyTags::Music::ArtistAlbumTrackTitle
    end

    it 'should not build artist_album_track_title' do
      music = subject.build '/home/lex/Music/classical/08 Adagio ma non tanto.m4a'
      music.wont_be_instance_of FixMyTags::Music::ArtistAlbumTrackTitle
    end

  end

end
  
