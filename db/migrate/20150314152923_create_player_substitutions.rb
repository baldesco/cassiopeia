class CreatePlayerSubstitutions < ActiveRecord::Migration
  def change
    create_table :player_substitutions do |t|
      t.integer :player_id
      t.integer :substitution_id

      t.timestamps null: false
    end
  end
end
