require_relative 'book'

class Library
  def initialize
    @books = []
  end

  # CREATE
  def add_book(book)
    @books << book
  end

  # READ
  def view_books
    if @books.empty?
      puts "No books available."
    else
      @books.each { |book| book.display }
    end
  end

  def find_book(id)
    @books.find { |book| book.id == id }
  end

  # UPDATE
  def update_book(id, new_title, new_author)
    book = find_book(id)
    return "Book not found." if book.nil?

    book.title = new_title
    book.author = new_author
    "Book updated successfully."
  end

  # DELETE
  def delete_book(id)
    book = find_book(id)
    return "Book not found." if book.nil?

    @books.delete(book)
    "Book deleted successfully."
  end
end
