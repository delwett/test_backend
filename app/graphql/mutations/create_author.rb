module Mutations
  class CreateAuthor < Mutations::BaseMutation
    null true

    argument :name, String, required: true
    argument :birthdate, String, required: false
    argument :country, String, required: false

    field :author, Types::AuthorType, null: true
    field :errors, [String], null: false

    def resolve(name:, birthdate:, country:)
      author = Author.new(name: name, birthdate: birthdate, country: country)
      if author.save
        # Successful creation, return the created object with no errors
        {
          author: author,
          errors: []
        }
      else
        # Failed save, return the errors to the client
        {
          author: nil,
          errors: author.errors.full_messages
        }
      end
    end
  end
end
