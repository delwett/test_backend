module Types
  class BookType < Types::BaseObject
    description 'Book'

    field :id, ID, null: false
    field :author_id, ID, null: true
    field :title, String, null: false
    field :description, String, null: true
    field :rating, Integer, null: true
    field :author, AuthorType, null: true
  end
end
