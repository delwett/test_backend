module Mutations
  class UpdateAuthor < Mutations::BaseMutation
    null true

    argument :id, ID, required: true
    argument :name, String, required: true
    argument :birthdate, String, required: false
    argument :country, String, required: false

    field :author, Types::AuthorType, null: true
    field :errors, [String], null: false

    def resolve(id:, name:, birthdate:, country:)
      author = Author.find_by_id(id)
      if author.update(name: name, birthdate: birthdate, country: country)
        # Successful update, return the created object with no errors
        {
          author: author,
          errors: []
        }
      else
        # Failed update, return the errors to the client
        {
          author: nil,
          errors: author.errors.full_messages
        }
      end
    end
  end
end
