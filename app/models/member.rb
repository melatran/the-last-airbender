class Member
  attr_reader :name, :photoUrl, :enemies, :allies, :affiliation

  def initialize(attributes)
    @name = attributes[:name]
    @photoUrl = attributes[:photoUrl]
    @enemies = attributes[:enemies]
    @allies = attributes[:allies]
    @affiliation = attributes[:affiliation]
  end
end
