class PayersController < ApplicationController
def index
    @payers = Payer.all
  end

  def show
    @payer = Payer.find(params[:id])
  end

  def new 
    @payer = Payer.new
  end

  def create
    @payer = Payer.new(params[:payer])
    if @payer.save
      redirect_to payer_path(@payer)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end
end
