class Artist
  extend Findable::ClassMethods
  include Findable::ClassMethods
  extend Memorable::ClassMethods
  include Memorable::ClassMethods
  extend Memorable::InstanceMethods
  include Memorable::InstanceMethods
  extend Paramable
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
