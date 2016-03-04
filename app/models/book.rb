require 'httparty'

class Book
  include HTTParty
  base_uri 'api.nytimes.com/svc/books/v3/lists'
  default_params "api-key" => '60fce6e87246e8f97b7a5584bc493fc0:2:74579649'

  # def self.all_lists(date)
  #   date_obj = Date.parse(date) # taking date string in any form and turns into date object
  #   str_date = date_obj.strftime("%Y-%m-%d") # once standardized, outputs as required
  #   json = self.get("/#{str_date}/trade-fiction-paperback.json") # requests data from api with interpolated date
  #   json["results"]["books"]
  # end
end

# Book.all_lists("20111010")

  #For individual book at later date.
  # def initialize(listname, title)
  #   @options = {query: {listname: listname, title: title}}
  # end
