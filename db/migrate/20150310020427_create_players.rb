class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :country
      t.integer :age
      t.string :position
      t.boolean :starter

      t.timestamps null: false
    end
  end
end
