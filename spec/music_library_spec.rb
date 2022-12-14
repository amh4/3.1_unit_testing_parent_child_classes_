require 'music_library'

describe "Music library" do
    it "adds a track and then returns all tracks" do
        track = FakeTrack.new
        library = MusicLibrary.new
        library.add(track)
        expect(library.all).to eq [["Hello", "Lionel Richie"]]
    end

    it "adds two tracks then returns all tracks" do
        track = FakeTrack.new
        library = MusicLibrary.new
        library.add(track)
        library.add(track)
        expect(library.all).to eq [["Hello", "Lionel Richie"], ["Hello", "Lionel Richie"]]
    end
end








class FakeTrack
    def initialize
        @title = 'Hello'
        @artist = 'Lionel Richie'
    end
end