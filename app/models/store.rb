class Store
  attr_reader :name,
              :city,
              :distance,
              :phone,
              :store_type

  def initialize(store_data)
    binding.pry
    @name = store_data[:longName]
    @city = store_data[:city]
    @distance = store_data[:distance]
    @phone = store_data[:phone]
    @store_type = store_data[:storeType]
  end

  def self.nearest_stores(zip)
    stores = BestBuyService.new(zip)
    stores.map do |store|
      Store.new(store)
    end
  end
end
