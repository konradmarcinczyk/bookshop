class Client < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
  has_many :addresses

  validates_presence_of :resource_id, :resource_type, :status
  validates_inclusion_of :status, :in => %w(new confirmed deleted banned)
  validates_inclusion_of :resource_type, :in => %w(user company) 
  validates_numericality_of :resource_id
end
