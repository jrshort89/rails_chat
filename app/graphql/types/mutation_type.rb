module Types
  class MutationType < Types::BaseObject
    field :add_message, mutation: Mutations::AddMessage
  end
end
