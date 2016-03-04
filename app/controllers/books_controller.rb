class BooksController < ApplicationController


  def self.all_lists(date)
    date_obj = Date.parse(date) # taking date string in any form and turns into date object
    str_date = date_obj.strftime("%Y-%m-%d") # once standardized, outputs as required
    json = self.get("/#{str_date}/trade-fiction-paperback.json") # requests data from api with interpolated date
    json["results"]["books"]
  end

  def new
   @books = Book.all_lists(date)
  end

  def index

  end



end
