class StaticPagesController < ApplicationController
  def home
    @books = Book.all_lists("20110505")["results"]
  end

  def help
  end

  def about
  end

  def contact
  end

end
