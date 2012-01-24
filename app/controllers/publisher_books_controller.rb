class PublisherBooksController < ApplicationController
  def index
    @publisher_books = PublisherBook.all 
  end

  def show
    @publisher_book = PublisherBook.find(params[:id])
    @books = @publisher_book.books.page(params[:page]).per(10)
  end

  def new
    @publisher_book = PublisherBook.new
  end

  def create
    @publisher_book = PublisherBook.new(params[:publisher_book])
    if @publisher_book.save
      redirect_to publisher_book_path(@publisher_book)
    else
      render :action => "new"
    end
  end

  def edit
  end

  def destroy
  end

end
