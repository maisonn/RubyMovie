class HomeController < ApplicationController
  def index
    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @movies = Movie.where(category: @category)
    else
      @movies = Movie.all.order(created_at: :desc)
    end
  end
end
