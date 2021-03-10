class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cart , :reviews]
  def home
  end

  def reviews
  end

  def counter
    @cart_items = 0
    session[:cart].each{|k,v| @cart_items += v } if session[:cart]
    respond_to do |format|
      format.html
      format.json { render json: { count: @cart_items } }
    end
  end
end
