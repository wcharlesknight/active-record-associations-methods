class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count# return the number of artists associated with the genre
  end

  def all_artist_names
    self.artists.map {|a| a.name}
  end
end
