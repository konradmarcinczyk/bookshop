class CategoryBook < ActiveRecord::Base
  belongs_to :subcategory_book
  has_many :books
end
