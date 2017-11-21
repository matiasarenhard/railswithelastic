class SeriesController < ApplicationController
  def index
     if params[:keywords].present?
        @series = Series.search params[:keywords], fields: [:name, :description]
     end
  end
end
