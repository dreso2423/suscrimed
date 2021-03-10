class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cart , :reviews]
  def home
  end

  def reviews
  end
end
