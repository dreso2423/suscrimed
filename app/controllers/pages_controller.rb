class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :cart]
  def home
  end
end
