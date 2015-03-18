class CreateSubstitutions < ActiveRecord::Migration
  def change
    create_table :substitutions do |t|
      t.integer :minute

      t.timestamps null: false
    end
  end
end
