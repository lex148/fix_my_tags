module FixMyTags::Music

  class Basic

    attr_reader :name, :artist, :title, :filetype

    def initialize file
      @name     = file.match(/[^\/]*$/).to_s
      @artist   = (@name.match /^[^-]*/ || "").to_s.strip
      @title    = (@name.match( /-([^\.]*)/)[1] ).to_s.strip
      @filetype = (@name.match( /[\.]([^\.]*)/)[1] ).to_s.strip
    end

    def self.match? file
      name = file.match(/[^\/]*$/).to_s
      !!(name.match /^[^-]+ - [^-]+\.[^-]+$/)
    end

  end

end
