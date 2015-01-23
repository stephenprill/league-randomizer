class LeagueAPI

  def initialize
    @conn = Faraday.new(:url => 'https://na.api.pvp.net')
  end

  def champions
    response = @conn.get do |req|
      req.url "/api/lol/static-data/na/v1.2/champion?api_key=235a1bf0-3036-46bc-9397-a6d159b29003"
      req.headers['Content-Type'] = 'application/json'
  end
  JSON.parse(response.body, symbolize_names: true)
end

end
