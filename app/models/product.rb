class Product < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
  has_many :pictures
end
