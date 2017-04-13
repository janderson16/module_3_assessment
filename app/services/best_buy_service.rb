class BestBuyService
  attr_reader :connection, :auth

  def initialize
    @connection = Faraday.new("https://api.bestbuy.com/v1/stores")
    @auth = "&apiKey=#{ENV["key"]}"
  end

  def nearest_stores(zip)
    connection.get("(area(#{zip},25))?format=json&show=longName,city,distance,phone,storeType")
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
