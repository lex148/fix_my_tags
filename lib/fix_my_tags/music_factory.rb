require "fix_my_tags/music/basic"

module FixMyTags::MusicFactory

  def self.build file
    FixMyTags::Music::Basic.new file
  end

  def registor
  end

end
