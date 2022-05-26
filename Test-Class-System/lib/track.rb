class Track
  def initialize(title, artist) # title and artist are both strings
    @title = title 
    @artist = artist
  end

  def format
    # Returns a string of the form "TITLE by ARTIST"
    return "#{title} by #{artist}"
  end

  def title
    # Returns the title as a string
    @title 
  end

  def artist
    @artist
  end 
end