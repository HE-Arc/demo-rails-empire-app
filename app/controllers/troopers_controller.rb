class TroopersController < ApplicationController
  def index
    @troopers = Trooper.all
  end

  def new
    @trooper = Trooper.new
  end

  def create
    @trooper = Trooper.new(trooper_params)
    if @trooper.save
      redirect_to troopers_path, notice: @trooper.name + ' at your orders !'
    else
      render :new
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def trooper_params()
      params.require(:trooper).permit(:name, :age, :strength)
    end
end
