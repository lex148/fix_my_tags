require "fix_my_tags/music/basic"
require "fix_my_tags/music/underscore"

module FixMyTags::MusicFactory

  @Klasses = [ FixMyTags::Music::Underscore ,
               FixMyTags::Music::Basic]

  def self.build file
    @Klasses.each do |klass|
      return klass.new file if klass.match? file 
    end
    return nil
  end

end
