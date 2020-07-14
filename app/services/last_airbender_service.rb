class LastAirbenderService

  def members_of_nation(element)
    conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    response = conn.get("/api/v1/characters?affiliation=$#{element}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
