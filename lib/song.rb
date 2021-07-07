class Song
  extend Findable::ClassMethods
  include Findable::ClassMethods
  extend Memorable::ClassMethods
  include Memorable::ClassMethods    
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Paramable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
