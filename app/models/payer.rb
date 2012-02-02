#encoding: utf-8
class Payer < ActiveRecord::Base
  belongs_to :company
  has_many :person_contacts
#  has_many :addresses
#address belongs_to :client :/


#potrzebna walidacja czy firma jest szkołą/biblioteką 

  validates_presence_of :name, :phone, :company_id, :nip
  validates :nip, :format => { :with =>  /^[0-9]{10}$/, :message => "NIP jest złożony z 10 cyfr"}
  validates_numericality_of :company_id
  validates :phone, :format => { :with =>  /^([0-9]{9}$)|^(\([0-9]{2}\)[0-9]{7})$/, 
            :message => "numer telefony komórkowego jest złożony z 9 cyfr, a stacjonarny składa się z nr kierunkowego w nawiasach i numeru właściwego"}
end
