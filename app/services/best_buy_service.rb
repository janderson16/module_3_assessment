class BestBuyService
  attr_reader :connection, :auth


  def initialize
    @connection = Faraday.new("https://api.bestbuy.com/v1/stores")
    # @auth = "&apiKey=#{ENV["key"]}"
  end

  def nearest_stores(zip)
    # response = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=longName,city,distance,phone,storeType&apiKey=#{ENV["key"]}")
    # parse(response)
    # binding.pry
    parse(connection.get("(area(#{zip},25))?format=json&show=longName,city,distance,phone,storeType&apiKey=#{ENV["key"]}"))
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
