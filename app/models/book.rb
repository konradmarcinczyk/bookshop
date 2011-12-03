class Book < ActiveRecord::Base
  belongs_to :subcategory_book
  belongs_to :publisher_book
  has_one :product, :as => :resource
end
