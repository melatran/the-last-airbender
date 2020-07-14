class SearchController < ApplicationController
  def index
    search_results = LastAirbenderService.new
    json = search_results.members_of_nation

    @members = json.map do |member_data|
      Member.new(member_data)
    end

    # element = params[:nation]
    # conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    # response = conn.get("/api/v1/characters?affiliation=fire nation")
    # @members = JSON.parse(response.body, symbolize_names: true)
  end

  # private
  #
  # def member_params
  #   params.permit(:name, :nation)
  # end
end
