class FixMyTags::MusicFinder

  attr_reader :path

  def initialize path = "~/Music"
    @path = path
  end

  def list
    found = `find #{@path} -type f`
    files = found.force_encoding('UTF-8').split(/\n/)
    files = files.select{|x| !x.match(/\/\./) }
    files.map{ |file| FixMyTags::MusicFactory.build file }
  end

end
