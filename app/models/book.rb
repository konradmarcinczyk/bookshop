#encoding: utf-8
class Book < ActiveRecord::Base
  belongs_to :subcategory_book
  belongs_to :publisher_book
  belongs_to :category_book
  has_one :product, :as => :resource
  after_create :make_product

  private
    def make_product
      self.create_product
    end

  validates_presence_of :title, :year_of_publishing, :number_of_pages, :publisher, :price, :author, 
                        :description, :language, :publisher_book_id, :isbn, :category_book_id, :cover
# if category_book(@id) has_any subcategory_book then validates_presence_of :subcategory_book_id  && subcategory_book(@id) belongs to category_book_id!!!!
  validates_numericality_of :isbn 
# HOWTO validates :isbn, :length => { :is => 10 OR :is => 13}
  validates :price, :numericality => { :greater_than => 0, :less_than => 1000 }
#price do 2 miejsc po przecinku!!!
  validates :year_of_publishing, :numericality => { :greater_than => 1900, :less_than => 2100 }
#dobrze było by less_than => aktualny_rok
  validates :number_of_pages, :numericality => { :greater_than => 0 }
  validates_inclusion_of :cover, :in => %w("miękka" "twarda"), :message => "%{value} jest niedozwolona, może być miękka albo twarda" 

end
