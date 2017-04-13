require "rails_helper"

describe BestBuyService do

  before(:each) do
    @service = BestBuyService.new
  end

  it "returns nearest stores" do
    stores = @service.nearest_stores(80202)[:stores]
    binding.pry
    store = stores.first
    expect(stores.count).to eq(10)
  end
end
