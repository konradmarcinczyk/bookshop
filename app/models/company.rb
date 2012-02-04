#encoding: utf-8
class Company < ActiveRecord::Base
  has_one :client, :as => :resource
  has_many :addresses, :as => :resource
  has_many :payers

   def phone_cannot_be_blank
      if mobile_phone.blank? and fax_phone.blank? and stationary_phone.blank?
        errors.add(:mobile_phone,"Musisz podać przynajmniej jeden numer telefonu!")
      end
    end


  validates_presence_of :name, :nip, :library_or_school
  validates_uniqueness_of :name,  :nip
  validate :phone_cannot_be_blank
  validates :nip, :format => { :with =>  /^[0-9]{10}$/, :message => "NIP jest złożony z 10 cyfr"}
  validates :mobile_phone, :format => { :with =>  /^[0-9]{9}$/, 
            :message => "numer telefony komórkowego jest złożony z 9 cyfr"}, :allow_blank => true
  validates :fax_phone, :format => {:with =>  /^\([0-9]{2}\)[0-9]{7}$/, 
            :message => "numer musi składać się z nr kierunkowego w nawiasach i numeru właściwego"},:allow_blank => true
  validates :stationary_phone, :format => {:with =>  /^\([0-9]{2}\)[0-9]{7}$/, 
            :message => "numer musi składać się z nr kierunkowego w nawiasach i numeru właściwego"},:allow_blank => true
  validates_inclusion_of :library_or_school, :in => %w(true false)
end
