require_relative '../lib/music_library'
require_relative '../lib/track'

describe "Music library" do
	it "adds a track and then returns all tracks" do
		track_1 = double :track
		track_2 = double :track
		library = MusicLibrary.new
		library.add(track_1)
		library.add(track_2)
		expect(library.all).to eq [track_1, track_2]
	end

	it "searches track that match" do
		library = MusicLibrary.new
		track_1 = double :track
		expect(track_1).to receive(:matches?).with("two").and_return(true)
		track_2 = double :track
		expect(track_2).to receive(:matches?).with("two").and_return(false)
		library.add(track_1)
		library.add(track_2)
		expect(library.search("two")).to eq [track_1]
    end

end


