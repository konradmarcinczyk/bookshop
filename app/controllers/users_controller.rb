class UsersController < ApplicationController
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
    @user = User.new(params[:user])

    if @user.save
       
      @client.Client.create(:email => params[:user][:client][:email],:password => params[:user][:client][:password], :password_confirmation => params[:user][:client][:password_confirmation], :resource => @user)
      redirect_to :root
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end
end
