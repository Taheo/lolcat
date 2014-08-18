class Subscription < ActiveRecord::Base
	validates :email, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :email, length: { maximum:30 , minimum: 6 }
	validates :email, uniqueness: true
end
