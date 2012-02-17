module FixMyTags::Music

  class TrackNumberMiddle
    #'./random/folder/artist_d - 354 - title_anem .ext'
    #
    attr_reader :name, :artist, :title, :filetype

    def initialize file
      @name     = file.match(/[^\/]*$/).to_s
      clean    = @name.gsub("_"," ")
      parts = clean.split /-/
      puts parts
      @title = parts[-1].split('.')[0].strip
      #@title = parts[-1].split('.')[0].strip
      #@filetype = parts[-1].split('.')[-1].strip
      #@artist = parts[0].strip
    end

    def self.match? file
      name = file.match(/[^\/]*$/).to_s
      !!(name.match /^[^-]+ -\W*[0-9]+\W*- [^-]+\.[^-]+$/)
    end

  end

end
