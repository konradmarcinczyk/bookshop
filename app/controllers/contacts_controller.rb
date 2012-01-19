#encoding: utf-8
class ContactsController < ApplicationController
  def new
    # id is required to deal with form
    @contact = Contact.new(:id => 1)
  end
 
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      redirect_to('/', :notice => "Wiadomość została wysłana.")
    else
      flash[:alert] = "Wypełnij wszystkie pola"
      render 'new'
    end
  end
end
