class CategoryGamesController < ApplicationController
  def index
    @category_games = CategoryGame.all 
  end

  def show
    @category_game = CategoryGame.find(params[:id])
    @games = @category_game.games.page(params[:page]).per(10) 
  end

  def new 
    @category_game = CategoryGame.new
  end

  def create
    @category_game = CategoryGame.new(params[:category_game])
    if @category_game.save
      redirect_to category_game_path(@category_game)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end

end
