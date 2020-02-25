require 'pry'
require_relative './book'
require_relative './author'

#Authors
mary = Author.new("Mary Fluffkins")
johann = Author.new("Johann Marize")
corben = Author.new("Corben B")
tasha = Author.new("Tasha Jones")

unicorns = Book.new("Unicorn Book", mary, 3982)
theology = Book.new("Theology Book", tasha, 523)
recipe = Book.new("Recipe Book", mary, 109)
action = Book.new("Action Book", corben, 323)
romance = Book.new("Romance Book", johann, 303)

binding.pry


