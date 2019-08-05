class Task < ApplicationRecord
    belongs_to :user
    scope :to_do,   ->(user){ where(user_id: user.id, done:false) }
    scope :done,   ->(user){ where(user_id: user.id, done:true) }
    scope :played, ->(user){ where(user_id: user.id, playing_status:true) } 

    def play_pause
        if self.playing_status
            self.duration += (Time.now.to_i - self.updated_at.to_i)
        end
        self.playing_status = !self.playing_status
        self.save        
    end

    def update_duration
        if self.playing_status
            self.duration += (Time.now.to_i - self.updated_at.to_i)
        end
        self.save
    end

    def self.update_all_playing(user)
        Task.played(user).all.select { |r| r.update_duration }
    end
end
