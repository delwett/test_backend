module Mutations
  class DeleteAuthor < Mutations::BaseMutation
    null true

    argument :id, ID, required: true

    field :author, Types::AuthorType, null: true
    field :errors, [String], null: false

    def resolve(id:)
      author = Author.find_by_id(id)
      author.destroy

      {
        author: author,
        errors: []
      }
    end
  end
end
