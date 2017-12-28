require 'pry'
class Song
  attr_accessor :name, :artist_name, :filename_format
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
     song
  end

  def self.new_by_name(name)
     song = self.new
     song.name=(name)
       song
  end

  def self.create_by_name(name)
    song = self.new
    song.save
    song.name=(name)
      song
  end

  def self.find_by_name(name)
    self.all.detect {|song|song.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    @@all.sort_by {|song| song.name}
  end

  def self.new_from_filename(filename_format)
    #song = self.new
    new_song = self.create_by_name(filename_format)
    new_song.save
    #binding.pry
    #new_song
    new_song = row.split("-")
      artist_name = new_song[0]
       name = new_song[1]
      filename_format = new_song[2]

    name
  end
end
