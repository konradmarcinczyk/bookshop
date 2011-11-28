class CategoryAccessoriesController < ApplicationController
  def index
    @category_accessories = CategoryAccessory.all 
  end

  def show
    @category_accessory = CategoryAccessory.find(params[:id])
  end

  def new 
    @category_accessory = CategoryAccessory.new
  end

  def create
    @category_accessory = CategoryAccessory.new(params[:category_accessory])
    if @category_accessory.save
      redirect_to category_accessory_path(@category_accessory)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end

end
