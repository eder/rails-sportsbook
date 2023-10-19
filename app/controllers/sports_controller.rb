class SportsController < ApplicationController
  before_action :set_sport, only: [:show, :update, :destroy]

  def index
    @sports = Sport.all
    render json: @sports
  end

  def show
    render json: @sport
  end

  def create
    @sport = Sport.new(sport_params)
    if @sport.save
      render json: @sport, status: :created
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  def update
    if @sport.update(sport_params)
      render json: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @sport.destroy
  end

  private

  def set_sport
    @sport = Sport.find(params[:id])
  end

  def sport_params
    params.require(:sport).permit(:name, :slug, :active)
  end
end

