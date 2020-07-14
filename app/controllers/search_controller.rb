class SearchController < ApplicationController
  def index
    search_results = SearchResults.new
    @members = search_results.members(nation)
    # nation = params[:element_nation]
    # conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    # response = conn.get("/api/v1/characters?affiliation=$#{nation}")
    # json = JSON.parse(response.body, symbolize_names: true)
  end
end
