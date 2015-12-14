class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
