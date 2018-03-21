class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :user_items, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
