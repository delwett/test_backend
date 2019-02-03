module Types
  class AuthorType < Types::BaseObject
    description 'Author'

    field :id, ID, null: false
    field :name, String, null: false
    field :birthdate, String, null: true
    field :country, String, null: true
  end
end
