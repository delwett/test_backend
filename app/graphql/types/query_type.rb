module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :authors, [Types::AuthorType], null: true do
      description 'A list of authors'
    end

    field :author, Types::AuthorType, null: true do
      description 'An author'
      argument :id, ID, required: true
    end

    field :books, [Types::BookType], null: true do
      description 'A list of books'
    end

    field :book, Types::BookType, null: true do
      description 'A book'
      argument :id, ID, required: true
    end

    def authors
      Author.all
    end

    def author(id:)
      Author.find_by_id(id)
    end

    def books
      Book.all
    end

    def book(id:)
      Book.find_by_id(id)
    end
  end
end
