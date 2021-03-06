require 'pry'
class Artist
  attr_accessor :name, :song
  @@all = []
         def initialize(name)
                 @name = name
                 @@all << self
         end

             def self.all
                 @@all
             end

                def songs
                s = Song.all.find_all {|song| song.artist == self}             
                  
                end
             
                def add_song(song)
                song.artist = self
                end

                def self.find_or_create_by_name(name)       
                     artist = Artist.all.find {|artist| artist.name == name } 
                     if artist
                     return artist
                     else
                     artist =  Artist.new(name)                           
                     return artist       
                     end                        
                   
                end

                def print_songs
                  self.songs.each {|song| puts song.name}
                  
                end

            end