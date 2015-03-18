class CreateSeasonTeams < ActiveRecord::Migration
  def change
    create_table :season_teams do |t|
      t.integer :team_id
      t.integer :season_id

      t.timestamps null: false
    end
  end
end
