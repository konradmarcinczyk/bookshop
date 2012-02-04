class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new 
    @user = User.new
   #    @user.client.build(params[:email, :password])
  end

  def create
    @user = User.new(params[:user])
    @user.build.client(params[:email, :password])
    if @user.save
      redirect_to user_path(@user)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end
end
