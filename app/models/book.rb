class Book < ActiveRecord::Base
  belongs_to :category_book
  has_one :product
end
