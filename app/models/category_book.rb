class CategoryBook < ActiveRecord::Base
  has_many :subcategory_books
  has_many :books
end
