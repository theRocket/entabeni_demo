module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name_first, String, null: true
    field :name_last, String, null: true
    field :email, Types::Email, null: true
    field :phone, Types::Phone, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    
  end
end