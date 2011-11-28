class SubcategoryBooksController < ApplicationController
 def index
    @subcategory_books = SubcategoryBook.all 
  end

  def show
    @subcategory_book = SubcategoryBook.find(params[:id])
  end

  def new 
    @subcategory_book = SubcategoryBook.new
  end

  def create
    @subcategory_book = SubcategoryBook.new(params[:subcategory_book])
    if   @subcategory_book.save
      redirect_to subcategory_book_path(@subcategory_book)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end

end
