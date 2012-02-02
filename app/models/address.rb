class Address < ActiveRecord::Base


  validates_presence_of :street, :house_number, :zip_code, :city, :address_type, :client_id
  
end
