class CategoryBook < ActiveRecord::Base
  has_many :subcategory_books
  has_many :books
  validates_uniqueness_of :name
end
