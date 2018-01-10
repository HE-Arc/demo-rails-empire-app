class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @sith_of_the_day = Category.find_by(:name => 'Sith').trooper.order("RAND()").first
  end

end
