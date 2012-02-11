module FixMyTags::Music

  class Basic

    attr_reader :name

    def initialize file
      @name = @fullpath = file
    end

    def artist
      (@name.match /^[^-]*/ || "").to_s.strip 
    end

    def title
      (@name.match( /-([^\.]*)/)[1] ).to_s.strip 
    end

    def filetype
      (@name.match( /[\.]([^\.]*)/)[1] ).to_s.strip 
    end

  end

end
