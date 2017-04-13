class SearchController < ApplicationController

  def index
    @zip = params[:q]
    @stores = Store.nearest_stores(zip)
  end
end
