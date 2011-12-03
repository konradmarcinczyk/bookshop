class SubcategoryBook < ActiveRecord::Base
  belongs_to :category_book
  has_many :books
end
