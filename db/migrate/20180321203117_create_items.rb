class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.decimal :price
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
