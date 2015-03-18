class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :match_date
      t.float :local_pos
      t.float :away_pos
      t.integer :local_shots
      t.integer :away_shots
      t.integer :local_shots_target
      t.integer :away_shots_targer
      t.string :score

      t.timestamps null: false
    end
  end
end
