class BooksController < ApplicationController

  def index
  @books= Book.all
  end

  def new
    @book = Book.new
  end


  def show

  end

  def create
  @book=Book.new(book_params)
  @book.save
    redirect_to  books_path
  end

  def update

  end

  def edit

  end

  private
  def book_params
    params.require(:book).permit(:name,:author,:isbn,:quantity)
  end

end
