module FixMyTags::Music

  class TrackNumberMiddle

    attr_reader :name

    def initialize file
      @fullpath = file
      @name = @fullpath.match(/[^\/]*$/).to_s
      @clean = @name.gsub("_"," ")
    end

    def self.match? file
      !!(file.match /^[^-]+ -\W*[0-9]+\W*- [^-]+\.[^-]+$/)
    end

    def artist
      (@clean.match /^[^-]*/ || "").to_s.strip 
    end

    def title
      (@clean.match( /[0-9]+\W*-([^\.^-]*)/)[1] ).to_s.strip 
    end

    def filetype
      (@clean.match( /[\.]([^\.]*)/)[1] ).to_s.strip 
    end

  end

end
