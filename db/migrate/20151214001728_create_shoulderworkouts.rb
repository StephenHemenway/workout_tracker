class CreateShoulderworkouts < ActiveRecord::Migration
  def change
    create_table :shoulderworkouts do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
