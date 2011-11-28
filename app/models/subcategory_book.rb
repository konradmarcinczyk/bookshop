class SubcategoryBook < ActiveRecord::Base
  has_many :category_books
end
