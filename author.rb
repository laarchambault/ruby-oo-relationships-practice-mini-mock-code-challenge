class Author
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        this_auth_books = Book.all.select do |book|
            book.author == self
        end
        #  for just book titles, not instances:
        #  this_auth_books.map do |book|
        #      book.title
        #  end
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        self.books.sum do |book|
            book.word_count
        end
    end

    def self.most_words
        #look at hash of author with total words
        #find max
        wordy_author = nil
        high_count = 0
        self.all.each do |author_instance|
            if author_instance.total_words > high_count
                wordy_author = author_instance
                high_count = author_instance.total_words
            end
        end
        wordy_author
    end

end
