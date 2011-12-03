class CategoryBook < ActiveRecord::Base
  has_many :subcategory_books
end
