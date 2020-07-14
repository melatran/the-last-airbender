class SearchResults
  def members
    json = LastAirbenderService.new.members_of_nation
    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end
end
