module FixMyTags::Music

  class Underscore

    attr_reader :name

    def initialize file
      @fullpath = file
      @name = @fullpath.match(/[^\/]*$/).to_s
      @clean = @name.gsub("_"," ")
    end

    def self.match? file
      !!(file.match /^[^-]+_-_[^-]+\.[^-]+$/)
    end

    def artist
      (@clean.match /^[^-]*/ || "").to_s.strip 
    end

    def title
      (@clean.match( /-([^\.]*)/)[1] ).to_s.strip 
    end

    def filetype
      (@clean.match( /[\.]([^\.]*)/)[1] ).to_s.strip 
    end

  end

end
