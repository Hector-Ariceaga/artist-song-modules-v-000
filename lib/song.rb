require 'pry'

class Song
  extendMemorable::ClassMethods
  extend Findable::InstanceMethods
  include Paramable
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
