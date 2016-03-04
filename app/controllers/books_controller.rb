class BooksController < ApplicationController
  def new
   @books = Book.all_lists("20111010")
  end

  def index

  end



end
