class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @sith_of_the_day = Category.find_by(:name => 'Sith').trooper_of_the_day
    @categories = Category.all.includes(:trooper)
  end

end
