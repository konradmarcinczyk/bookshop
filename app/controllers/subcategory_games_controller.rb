class SubcategoryGamesController < ApplicationController
 def index
    @subcategory_games = SubcategoryGame.all 
  end

  def show
    @subcategory_game = SubcategoryGame.find(params[:id])
  end

  def new 
    @subcategory_game = SubcategoryGame.new
  end

  def create
    @subcategory_game = SubcategoryGame.new(params[:subcategory_game])
    if @subcategory_game.save
      redirect_to subcategory_game_path(@subcategory_game)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end

end
