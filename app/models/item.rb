class Item < ApplicationRecord
	has_many :user_items, dependent: :destroy
	has_many :users, through: :user_items
	has_many :ratings, dependent: :destroy
	has_one_attached :image, dependent: :destroy
	def favorited?(current_user)
		@user_item = UserItem.find_by(item_id: self.id, user_id: current_user.id)
		if @user_item.nil?
			return false
		end
		return @user_item.favorited
	end
end
