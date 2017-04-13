class SearchController < ApplicationController

  def index
    @stores = Store.nearest_stores(params[:q])
    @total = Store.total_stores(params[:q])
  end
end
