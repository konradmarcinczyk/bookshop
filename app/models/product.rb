class Product < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
  has_many :pictures
  validates_presence_of :resource_id, :resource_type
  validates :resource_id, :numericality
end
