class GamesController < ApplicationController
  def index
    @games = Game.order("name").page(params[:page]).per(10)
  end

  def show
    @game = Game.find(params[:id])
  end

  def new 
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    if @game = Game.save
      redirect_to game_path(@game)
    else
      render :action => "new"
    end
  end
  def edit
  end

  def destroy
  end

end
