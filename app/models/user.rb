#encoding: utf-8
class User < ActiveRecord::Base
  has_one :client, :as => :resource
  has_many :addresses, :as => :resource
  accepts_nested_attributes_for :client
  #attr_accessible :name, :surname, :phone, :client_attributes
  
  validates_presence_of :name, :surname
  validates :phone, :format => { :with =>  /^([0-9]{9}$)|^(\([0-9]{2}\)[0-9]{7})$/, 
            :message => "numer telefony komórkowego jest złożony z 9 cyfr, a stacjonarny składa się z nr kierunkowego w nawiasach i numeru właściwego"}, :allow_blank => true

end
