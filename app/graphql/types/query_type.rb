module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :message_queries, resolver: Queries::MessageQueries
    field :all_users, resolver: Queries::AllUsers
    field :fetch_message, resolver: Queries::FetchMessage
  end
end
