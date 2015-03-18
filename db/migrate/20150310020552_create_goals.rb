class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :minute
      t.string :goal_type

      t.timestamps null: false
    end
  end
end
