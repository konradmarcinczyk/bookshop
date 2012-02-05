class UsersController < ApplicationController
  before_filter :prepare_params, :only => :create
  
  def prepare_params
    @client_attributes = params[:user].delete(:client_attributes)
    @params = params[:user]
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new 
    @user = User.new
    @user.build_client  
  end

  def create
    @user = User.new(@params)
    if @user.save
      @client = @user.create_client(@client_attributes.merge(:resource => @user))
      redirect_to root_path
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end
end
