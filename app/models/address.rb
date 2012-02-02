#encoding: utf-8
class Address < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true

  validates_presence_of :street, :house_number, :zip_code, :city, :address_type, :resource_id, :resource_type
  validates_inclusion_of :resource_type, :in => %w(user company payer) 
  validates_numericality_of :resource_id
  validates :house_number, :format => {:with =>  /^[1-9][0-9]{0,2}[a-z]{0,5}$/, 
            :message => "numer domu musi być liczbą większą od 1, może zawierać małe litery na końcu"}
  validates :apartment_number, :format => {:with =>  /^[1-9][0-9]{0,2}[a-z]{0,5}$/, 
            :message => "numer mieszkania musi być liczbą większą od 1, może zawierać małe litery na końcu"},
            :allow_blank => true
  validates :zip_code, :format =>{:with => /^[0-9]{2}\-[0-9]{3}$/}
  validates_inclusion_of :address_type, :in => %w(delivery payer permanent)
end
