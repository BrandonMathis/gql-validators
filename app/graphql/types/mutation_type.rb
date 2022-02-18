module Types
  class MutationType < Types::BaseObject
    field :create_resources, Mutations::CreateResource, null: false
  end
end
