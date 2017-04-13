require "rails_helper"

describe Store do
  xit '#nearest_stores' do
    stores = Store.nearest_stores(80202)

    expect(stores.first.class).to eq(Store)

  end
end
