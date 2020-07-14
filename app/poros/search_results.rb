class SearchResults
  def members(element)
    json = LastAirbenderService.new.members_of_nation(element)
    require "pry";binding.pry
  end
end
