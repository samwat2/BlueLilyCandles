class CreateUserItems < ActiveRecord::Migration[5.2]
  def change
    create_table :user_items do |t|
      t.references :items, foreign_key: true
      t.references :users, foreign_key: true
      t.boolean :favorites

      t.timestamps
    end
  end
end
