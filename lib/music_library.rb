class MusicLibrary
    def initialize
      # ...
      @track_list = []
      
    end
  
    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
        my_track = []
        my_track << track.instance_variable_get(:@title)
        my_track << track.instance_variable_get(:@artist)
        @track_list << my_track
    end
  
    def all
      # Returns a list of track objects
      @track_list
    end
    
    def search(keyword) 
      matching_tracks = []
      @track_list.flat_map do |item|
        joined = item.join(", ")
        if joined.include?(keyword)
          matching_tracks << joined
        end
      end
      return matching_tracks
    end
  end