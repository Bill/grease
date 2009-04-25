class Commit
  attr_reader :id
  def initialize( id)
    @id = id.to_s
  end
  def ==( other )
    self.id == other.id
  end
end