class SearchResultsController < ApplicationController

  def index
    @results = PgSearch.multisearch(params[:q]).collect(&:searchable)
  end

end
