class FightsController < ApplicationController
  def new
    @fight = Fight.new
    @teams = Team.order(name: :asc)
  end

  def create
    @fight = Fight.new(fight_params)
    @teams = Team.all
    if @fight.save
      redirect_to fight_path(@fight)
    else
      render :new
    end
  end

  def show
    @fight = Fight.find(params[:id])
  end

  def index
    @fights = Fight.order(date_occurred: :desc)
  end

  def edit
    @fight = Fight.find(params[:id])
    @teams = Team.order(name: :asc)
  end

  def update
    @fight = Fight.find(params[:id])
    @teams = Team.all

    if @fight.update(fight_params)
      redirect_to fight_path(@fight)
    else
      render :edit
    end
  end

  private

  def fight_params
    params.require(:fight).permit(:embed_url, :date_occurred, :description, :home_team_id, :away_team_id)
  end
end
