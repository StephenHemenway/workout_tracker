class CreateBackworkouts < ActiveRecord::Migration
  def change
    create_table :backworkouts do |t|
	  t.text :content
      t.timestamps null: false
    end
  end
end
