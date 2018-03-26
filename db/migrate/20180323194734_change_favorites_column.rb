class ChangeFavoritesColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :user_items, :favorites, :favorited
  	change_column :user_items, :favorited, :boolean, default: false
  end
end
