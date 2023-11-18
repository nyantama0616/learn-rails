class User < ApplicationRecord
    validates :user_id, uniqueness: { message: "User id has already been taken" }
end
