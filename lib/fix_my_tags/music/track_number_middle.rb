module FixMyTags::Music

  class TrackNumberMiddle

    attr_reader :name, :artist, :title, :filetype

    def initialize file
      @name     = file.match(/[^\/]*$/).to_s
      clean    = @name.gsub("_"," ")
      @artist   = (clean.match /^[^-]*/ || "").to_s.strip
      @title    = (clean.match( /[0-9]+\W*-([^\.^-]*)/)[1] ).to_s.strip
      @filetype = (clean.match( /[\.]([^\.]*)/)[1] ).to_s.strip
    end

    def self.match? file
      name = file.match(/[^\/]*$/).to_s
      !!(name.match /^[^-]+ -\W*[0-9]+\W*- [^-]+\.[^-]+$/)
    end

  end

end
