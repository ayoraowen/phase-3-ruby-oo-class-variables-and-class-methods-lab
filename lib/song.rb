require 'pry'
class Song

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre
    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@genres << genre
        @@artists << artist
    end

    # Ruby has a #uniq method for returning only the unique elements from an array:
    # [1, 1, 2, 3, 5].uniq
    # # => [1, 2, 3, 5]
    
    # This is quite convenient compared what you'd have to do to implement this functionality in JavaScript!
    # [1, 1, 2, 3, 5].filter((num, index, array) => array.indexOf(num) === index);
    

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count

    end

    def self.artist_count

    end


end
