require_relative 'library'

library = Library.new

loop do
  puts "\n=== LIBRARY BOOK MANAGEMENT SYSTEM ==="
  puts "1. Add Book"
  puts "2. View All Books"
  puts "3. Update Book"
  puts "4. Delete Book"
  puts "5. Exit"
  print "Choose an option: "

  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter Book ID: "
    id = gets.chomp.to_i
    print "Enter Title: "
    title = gets.chomp
    print "Enter Author: "
    author = gets.chomp

    library.add_book(Book.new(id, title, author))
    puts "Book added successfully."

  when 2
    puts "\n--- BOOK LIST ---"
    library.view_books

  when 3
    print "Enter Book ID to update: "
    id = gets.chomp.to_i
    print "Enter new title: "
    title = gets.chomp
    print "Enter new author: "
    author = gets.chomp

    puts library.update_book(id, title, author)

  when 4
    print "Enter Book ID to delete: "
    id = gets.chomp.to_i

    puts library.delete_book(id)

  when 5
    puts "Exiting program. Goodbye!"
    break

  else
    puts "Invalid option. Please try again."
  end
end
