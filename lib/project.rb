class Project
  attr_reader :title
  attr_accessor :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(backer)
    @backers << backer
    # This is how you shovel data from one class into an array in the other
    # class.
    backer.backed_projects << self
  end
end