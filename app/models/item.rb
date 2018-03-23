class Item < ApplicationRecord
	has_many :user_items, dependent: :destroy
	has_many :users, through: :user_items
	has_many :ratings, dependent: :destroy
	has_one_attached :image, dependent: :destroy
end
