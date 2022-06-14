module Queries
  class MessageQueries < Queries::BaseQuery

    type [Types::MessageType], null: false

    # Then provide an implementation:

    def resolve
      Message.all
    end
  end
end