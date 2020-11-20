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
      @@artists << artist
      @@genres << genre
   end

   def self.count
      @@count
   end

   def self.artists
      @@artists.uniq
   end

   def self.genres
      @@genres.uniq
   end

   def self.genre_count
      ans = {}
      @@genres.each do |genre|
         if ans[genre] == nil
            ans[genre] = 1
         else
            ans[genre] += 1
         end
      end
      ans
   end

   def self.artist_count
      ans = {}
      @@artists.each do |artist|
         if ans[artist] == nil
            ans[artist] = 1
         else
            ans[artist] += 1
         end
      end
      ans
   end
end