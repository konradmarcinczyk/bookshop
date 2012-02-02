class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def new 
    @address = Address.new
  end

  def create
    @address = Address.new(params[:address])
    if @address.save
      redirect_to address_path(@address)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end
end
