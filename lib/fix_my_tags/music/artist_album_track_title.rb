module FixMyTags::Music

  class ArtistAlbumTrackTitle

    attr_reader :name, :artist, :title, :filetype

    def initialize file
      parts = file.split /\//
      @name = file
      #@title = (parts[-1]).to_s.strip
      @title = ''
      @filetype =''
      @artist = ''
    end

    def self.match? file
      #name = file.match(/[^\/]*$/).to_s
      #!!(name.match /^[^-]+ -\W*[0-9]+\W*- [^-]+\.[^-]+$/)
      parts = file.split /\//
      !!(parts[-1].match /^[0-9]{0,2} [^-]+$/)
    end

  end

end
