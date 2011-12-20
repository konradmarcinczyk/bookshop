class PicturesController < ApplicationController

  def index
    @pictures = Picture.all 
  end

  def create
    @picture = Picture.create( params[:picture] )
  end 
  
  def show
    @picture = Picture.find(params[:id])
  end

  
  def edit
  end

  def destroy
  end

end
