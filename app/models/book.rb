class Book < ActiveRecord::Base

require 'httparty'

class Book
  include HTTParty
  base_uri 'http://api.nytimes.com/svc/books/v2/lists'
  format :json

  def
    get('/2010-10-01/trade-fiction-paperback.xml?api-key={'NYT_books_key'}')
   # :query => {:zip => zip, :output => 'json'} do not believe this is needed with NYT because query in url
  end
end

def
puts = {:listname => list, :output => 'JSON',
        :contributer => author, :output => 'JSON',
        :title => title, :output => 'JSON'
      }
end

end
