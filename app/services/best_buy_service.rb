class BestBuyService

  def get_stores
    nearest_stores[:stores]
  end

  def nearest_stores(zip)
    response = Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=longName,city,distance,phone,storeType&apiKey=#{ENV["key"]}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
