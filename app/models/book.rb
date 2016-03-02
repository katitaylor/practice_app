class Book < ActiveRecord::Base

require 'httparty'

class Book
  include HTTParty
  base_uri 'http://api.nytimes.com/svc/books/v3/reviews'
  format :json

  def
    get('http://api.nytimes.com/svc/books/v3/reviews[.response-format]?author={AUTHOR}&api-key={'NYT_books_key'}')
   # :query => {:zip => zip, :output => 'json'} do not believe this is needed with NYT because query in url
  end
end

def
puts = {:url => url, :output => 'JSON',
        :book_title => book title, :output => 'JSON',
        :byline => summary author, :output => 'JSON',
        :author => author, :output => 'JSON',
        :summary => summary, :output => 'JSON'
      }
end

end
