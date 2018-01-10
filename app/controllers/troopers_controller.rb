class TroopersController < ApplicationController
  def index
    @troopers = Trooper.all
  end
end
