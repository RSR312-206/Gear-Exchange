class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :brand
      t.string :model
      t.string :image
      t.integer :price
      t.timestamps null: false
    end
  end
end
