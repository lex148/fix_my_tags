require "fix_my_tags/music/basic"

module FixMyTags::MusicFactory

  @Klasses = [FixMyTags::Music::Basic]

  def self.build file
    @Klasses.each do |klass|
      return klass.new file if klass.match? file 
    end
  end

end
