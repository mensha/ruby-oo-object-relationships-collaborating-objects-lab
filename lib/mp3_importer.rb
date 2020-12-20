require 'pry'

class MP3Importer
     attr_reader :path
        def initialize(path)
           @path = path
        end

        def files
           
           all_files ||= Dir.glob("#{path}/*.mp3").collect{|file|  file.gsub("#{path}/", "")}
           #all_files[0].gsub("#{path}/", "") 
            # all_files.collect {|file|  file.gsub("#{path}/", "")}           
         
          
        end

        def import
            files.each {|filename| Song.new_by_filename(filename)}

        end

end