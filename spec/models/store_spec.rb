require "rails_helper"

describe Store do
  it '#nearest_stores' do
    stores = Store.nearest_stores(80202)

    expect(stores.first.class).to eq(Store)
    expect(stores.count).to eq(10)
  end
end
