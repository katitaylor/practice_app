// Wait until the DOM is ready

http://api.nytimes.com/svc/books/{version}/lists/best-sellers/history[.response_format]?{search-param1=value1}&[...]&[optional-param1=value1]&[...]&api-key={your-API-key}

$(function() {
    var nytBook = 'http://api.nytimes.com/svc/books/v2/best-sellers/history/';

    // List the books
    var display = function() {
        $.ajax({
                method: "GET",
                url: nytBook,
                data: {},
                dataType: "JSON"
            })
            .done(function(data) {
                console.log(data);
                for (var i = 0; i < data.length; i++) {
                    var book = data[i]
                    addBook($('#books'), book.title, book.author, book.price );
                };
            })
            .fail(function(jqXHR, textStatus) {
                alert("error: " + textStatus);
            });
    };
});



