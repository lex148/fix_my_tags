class FixMyTags::MusicFinder

  attr_reader :path

  def initialize path = "~/Music"
    @path = path
  end

  def list
    files = `find #{@path} -type f`.force_encoding('UTF-8').split(/\n/)
    files.map{ |file| FixMyTags::MusicFactory.build file }
  end

end
