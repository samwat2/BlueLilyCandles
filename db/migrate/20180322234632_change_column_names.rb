class ChangeColumnNames < ActiveRecord::Migration[5.2]
  def change
  	rename_column :ratings, :users_id, :user_id
  	rename_column :ratings, :items_id, :item_id 	
  	rename_column :user_items, :users_id, :user_id
  	rename_column :user_items, :items_id, :item_id
  	rename_column :purchases, :user_items_id, :user_item_id
  end
end