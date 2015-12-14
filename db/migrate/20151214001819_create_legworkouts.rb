class CreateLegworkouts < ActiveRecord::Migration
  def change
    create_table :legworkouts do |t|
	  t.text :content
      t.timestamps null: false
    end
  end
end
