class PublisherGamesController < ApplicationController
  def index
    @publisher_games = PublisherGame.all 
  end

  def show
    @publisher_game = PublisherGame.find(params[:id])
    @games = @publisher_game.games.page(params[:page]).per(10) 
  end

  def new
    @publisher_game = PublisherGame.new
  end

  def create
    @publisher_game = PublisherGame.new(params[:publisher_game])
    if @publisher_game.save
      redirect_to publisher_game_path(@publisher_game)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end


end
