module Queries
    class FetchMessage < Queries::BaseQuery
        type Types::MessageType, null: false
        argument :id, ID, required: true

        def resolve(id:)
            Message.find id
            rescue ActiveRecord::RecordNotFound => _e
                GraphQL::ExecutionError.new('Note does not exist.')
            rescue ActiveRecord::RecordInvalid => e
                GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
                    " #{e.record.errors.full_messages.join(', ')}")
        end
    end
end