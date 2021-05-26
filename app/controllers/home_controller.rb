class HomeController < ApplicationController
  def index
    if params.has_key?(:category)
      @category = Category.find_by_name(params[:category])
      @q = Movie.where(category: @category).ransack(params[:q])
      @movies = @q.result.page(params[:page]).order(created_at: :desc)
    else
      @q = Movie.ransack(params[:q])
      @movies = @q.result.page(params[:page]).order(created_at: :desc)
    end
  end
end
