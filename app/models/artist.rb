class Artist

  def initialize(aritst_hash)
    @name = artist_hash[:name]
  end

  def self.service
    ChaimzService.new
  end

  def self.all
    service.artists.map { |artist| Artist.new(artist) }
  end

  def self.find(id)
    Artist.new(service.artist(id))
  end

end
