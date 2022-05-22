module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :message, MessageType, "Find a message by ID" do
      argument :id, ID
    end
  
    # Then provide an implementation:
    def message(id:)
      Message.find(id)
    end
  end
end
