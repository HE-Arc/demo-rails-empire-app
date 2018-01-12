class TroopersController < ApplicationController
  before_action :set_trooper, only: [:show, :kill]

  def index
    @troopers = Trooper.all.includes(:category)
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

  def show
  end

  def kill
    @trooper.update!(alive: false)
    redirect_to troopers_path, notice: @trooper.name + ': It was an honor to serve you'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def trooper_params()
      params.require(:trooper).permit(:name, :age, :strength, :category_id)
    end

    def set_trooper
      @trooper = Trooper.find(params[:id])
    end
end
