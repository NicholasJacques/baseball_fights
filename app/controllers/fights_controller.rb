class FightsController < ApplicationController
  def new
    @fight = Fight.new
  end

  def create
    @fight = Fight.new(fight_params)
    if @fight.save
      redirect_to fight_path(@fight)
    else
      render :new
    end
  end

  def show
    @fight = Fight.find(params[:id])
  end

  private

  def fight_params
    params.require(:fight).permit(:embed_url, :date_occurred, :description)
  end
end