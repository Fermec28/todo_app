class Task < ApplicationRecord
    belongs_to :user
    scope :to_do,   ->(user){ where(user_id: user.id, done:false) }
    scope :done,   ->(user){ where(user_id: user.id, done:true) }
end
