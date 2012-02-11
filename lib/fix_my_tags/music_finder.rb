class FixMyTags::MusicFinder

  attr_reader :path

  def initialize path = "~/Music"
    @path = path
  end

  def list
    `ls #{@path}`.force_encoding('UTF-8').to_s.split(/\n/).map{|x| FixMyTags::Music.new x }
  end

end
