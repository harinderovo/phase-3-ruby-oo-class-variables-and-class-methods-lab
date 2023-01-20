class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        return @@count
    end

    def self.artists
        @@artists = @@artists.uniq 
    end

    def self.genres
        @@genres = @@genres.uniq
    end

    def self.genre_count
        genre_count = @@genres.group_by{|genre| genre}.map{|genre, genre_arr| [genre, genre_arr.count]}.to_h
    end

    def self.artist_count
        @@artists.tally
    end
end