module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :authors, [Types::AuthorType], null: true do
      description 'A list of authors'
    end

    def authors
      Author.all
    end
  end
end
