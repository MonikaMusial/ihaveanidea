class Idea < ApplicationRecord
	validates :title, presence: true, length: {minimum:3, maximum:50}
	has_many :user_ideas
    has_many :users, through: :user_ideas
end
