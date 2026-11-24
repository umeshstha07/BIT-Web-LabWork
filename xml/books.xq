for $book in doc("books.xml")/bookstore/book
where xs:decimal($book/price) > 50
return $book