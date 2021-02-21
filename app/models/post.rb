class Post < ApplicationRecord
	enum status: %i[ submitted approved rejected ]
	belongs_to :user, optional: true
	validates_presence_of :date, :rationale

	scope :posts_by, ->(user) { where(user_id: user.id) } 
end
