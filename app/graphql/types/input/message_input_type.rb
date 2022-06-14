module Types
    module Input
        class MessageInputType < Types::BaseInputObject
            argument :user_id, Int, required: true
            argument :body, String, required: true
        end
    end
end