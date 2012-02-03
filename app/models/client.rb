class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me

  belongs_to :resource, :polymorphic => true

 # validates_presence_of :resource_id, :resource_type, :status
  validates_inclusion_of :status, :in => %w(new confirmed deleted banned)
  validates_inclusion_of :resource_type, :in => %w(user company) 
 # validates_numericality_of :resource_id
end
