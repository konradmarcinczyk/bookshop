class BooksController < ApplicationController
  def index
    @books = Book.order("title").page(params[:page]).per(10) 
  end

  def show
    @book = Book.find(params[:id])
  end

  def new 
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      redirect_to book_path(@book)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end

end
