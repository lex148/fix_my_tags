require "fix_my_tags/music/basic"
require "fix_my_tags/music/underscore"
require "fix_my_tags/music/track_number_middle"

module FixMyTags::MusicFactory

  @Klasses = [ FixMyTags::Music::TrackNumberMiddle ,
               FixMyTags::Music::Underscore ,
               FixMyTags::Music::Basic]

  def self.build file
    @Klasses.each do |klass|
      return klass.new file if klass.match? file 
    end
    return file
  end

end
