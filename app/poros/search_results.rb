class SearchResults
  def members(element)
    json = LastAirbenderService.new.members_of_nation(element)
    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end
end
