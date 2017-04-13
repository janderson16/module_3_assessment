require "rails_helper"

describe "Item API" do
  it "can get a list of items" do
    item_1 = Item.create!(name: "Item 1", description: "Et consequuntur eius velit est. At eveni", image_url: "tuff.jpg")
    item_2 = Item.create!(name: "Item 2", description: "Et consequuntur eius velit est. At eveni", image_url: "tuff.jpg")

    get '/api/v1/items'

    expect(response).to be_success
    expect(Item.count).to eq(2)
  end

  it "can get a single item" do
    item_1 = Item.create!(name: "Item 1", description: "Et consequuntur eius velit est. At eveni", image_url: "tuff.jpg")

    get "/api/v1/items/#{item_1.id}"

    expect(response).to be_success
    expect(item_1.name).to eq("Item 1")
  end

  it "can create an item" do
    # item_1 = Item.create!(name: "Item 1", description: "Et consequuntur eius velit est. At eveni", image_url: "tuff.jpg")
    item_params = {name: "Item 1", description: "Et consequuntur eius velit est. At eveni", image_url: "tuff.jpg"}

    post "/api/v1/items/#{item_1.id}" params: item_params

    # assert
    # expect(response).to be_success

  end
end
