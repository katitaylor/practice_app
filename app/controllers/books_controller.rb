class BooksController < ApplicationController
  def new
  end

  def index
  @books = Book.all
  end

end
