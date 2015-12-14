class CreateChestworkouts < ActiveRecord::Migration
  def change
    create_table :chestworkouts do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
