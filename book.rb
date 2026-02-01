# book.rb
class Book
  attr_reader :id
  attr_accessor :title, :author

  def initialize(id, title, author)
    @id = id
    @title = title
    @author = author
  end

  def display
    puts "ID: #{@id} | Title: #{@title} | Author: #{@author}"
  end
end
