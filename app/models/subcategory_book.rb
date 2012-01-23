class SubcategoryBook < ActiveRecord::Base
  belongs_to :category_book
  has_many :books
  validates_uniqueness_of :name, :scope => :category_book_id
  validates_presence_of :category_book_id
end
