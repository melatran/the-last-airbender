class SearchController < ApplicationController
  def index
    @members = SearchResults.new.members(member_params(element))
    # element = params[:nation]
    # conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    # response = conn.get("/api/v1/characters?affiliation=fire nation")
    # @members = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def member_params(element)
    element.split(" ").join("+")
  end
end
