class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all_lists
    puts @books
  end

  def show
    @books = Book.find(params[:id])
  end

end
