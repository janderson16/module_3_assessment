require "rails_helper"

describe "user can search for stores" do
  xit "by location" do

    visit "/"

    fill_in :q with: "80202"
    click_on("search")
    expect(current_path).to eq("/search")
    expect(page).to have_content("BEST BUY MOBILE - CHERRY CREEK SHOPPING CENTER")
    expect(page).to have_content("BEST BUY MOBILE - BELMAR")
    expect(page).to have_content("LAKEWOOD")
    expect(page).to have_content("5.31")
    expect(page).to have_content("303-742-8039")
    expect(page).to have_content("Big Box")
    expect(page).to have_content("16 Total Stores")
  end
end
