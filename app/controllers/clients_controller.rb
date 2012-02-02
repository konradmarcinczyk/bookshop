class ClientsController < ApplicationController
def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new 
    @client = Client.new
  end

  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to client_path(@client)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end
end
