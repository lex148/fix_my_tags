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

  end

end
  
