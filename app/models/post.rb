class Post < ApplicationRecord
	enum status: %i[ submitted approved rejected ]
	belongs_to :user, optional: true
	validates_presence_of :date, :rationale
end
