module Queries
  class AllUsers < Queries::BaseQuery

    type [Types::UserType], null: false

    # Then provide an implementation:

    def resolve
      User.all
    end
  end
end
