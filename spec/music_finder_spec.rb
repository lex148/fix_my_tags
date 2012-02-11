require 'helper'

MOCK_MUSIC = './spec/mock_music'

describe 'MusicFinder' do
  
    describe 'Methods' do
      subject { FixMyTags::MusicFinder.new }
      
      it 'has list' do
        subject.must_respond_to :list
      end

      it 'has path' do
        subject.must_respond_to :path
      end

    end

    describe 'MusicFinder' do
      subject { FixMyTags::MusicFinder }

      it 'should default path the music folder' do
        subject.new.path.must_equal '~/Music'
      end

      it 'should be able to new with path' do
        subject.new("~").path.must_equal '~'
      end

      it 'list should be an array' do
        subject.new().list.class.must_equal Array
      end

      it 'list should contain "some random - mock file"' do
        music = "some random - mock file.mp3"
        subject.new(MOCK_MUSIC).list.map{|x| x.name }.must_include music
      end


    end

end
