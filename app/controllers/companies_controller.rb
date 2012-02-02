class CompaniesController < ApplicationController
def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new 
    @company = Company.new
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
      redirect_to company_path(@company)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end
end
