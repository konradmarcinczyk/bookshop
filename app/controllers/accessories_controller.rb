class AccessoriesController < ApplicationController
  def index
    @accessories = Accessory.all 
  end

  def show
    @accessory = Accessory.find(params[:id])
  end

  def new 
    @accessory = Accessory.new
  end

  def create
    @accessory = Accessory.new(params[:accessory])
    if @accessory.save
      redirect_to accessory_path(@accessory)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end

end
