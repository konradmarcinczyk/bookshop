class CategoryBooksController < ApplicationController
  def index
    @category_books = CategoryBook.all 
  end

  def show
    @category_book = CategoryBook.find(params[:id])
  end

  def new 
    @category_book = CategoryBook.new
  end

  def create
    @category_book = CategoryBook.new(params[:category_book])
    if @category_book.save
      redirect_to category_book_path(@category_book)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end

end
