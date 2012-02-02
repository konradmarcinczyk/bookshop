#encoding: utf-8
class PersonContact < ActiveRecord::Base
  belongs_to :company
#belongs_to :payer


  validates_presence_of :name, :phone, :company_id
  validates_numericality_of :company_id
  validates :phone, :format => { :with =>  /^([0-9]{9}$)|^(\([0-9]{2}\)[0-9]{7})$/, 
            :message => "numer telefony komórkowego jest złożony z 9 cyfr, a stacjonarny składa się z nr kierunkowego w nawiasach i numeru właściwego"}
end
