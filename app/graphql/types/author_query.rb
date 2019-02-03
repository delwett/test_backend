module Types
  class AuthorQuery < Types::QueryType
    field :authors, [Types::AuthorType], null: true do
      description 'A list of authors'
    end

    def authors
      Author.all
    end
  end
end
