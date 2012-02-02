class PersonContactsController < ApplicationController
def index
    @person_contacts = PersonContact.all
  end

  def show
    @person_contact = PersonContact.find(params[:id])
  end

  def new 
    @person_contact = PersonContact.new
  end

  def create
    @person_contact = PersonContact.new(params[:person_contact])
    if @person_contact.save
      redirect_to person_contact_path(@person_contact)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end
end
