#encoding: utf-8
class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me

  belongs_to :resource, :polymorphic => true

  validates_presence_of :resource_id, :resource_type, :status
  validates_inclusion_of :status, :in => %w(new confirmed deleted banned)
  validates :email, :format => {:with =>  /^\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z$/, 
            :message => "To nie jest e-mail"}
  validates_inclusion_of :resource_type, :in => %w(user User company Company) 
  validates_numericality_of :resource_id
end
