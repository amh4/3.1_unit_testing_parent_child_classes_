require_relative "../lib/track"
require_relative "../lib/music_library"

RSpec.describe "integration" do
  it "add and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = Track.new("title1", "artist1")
    track_2 = Track.new("title2", "artist2")
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end 

  it "searches track by keyword" do
    track_1 = Track.new("One two three", "four five six")
    track_2 = Track.new("Seven eight nine", "ten elevel twelve")
    library = MusicLibrary.new
    library.add(track_1)
    library.add(track_2)
    expect(library.search("two")).to eq [track_1]
  end
end