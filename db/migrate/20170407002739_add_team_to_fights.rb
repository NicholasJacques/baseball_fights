class AddTeamToFights < ActiveRecord::Migration[5.0]
  def change
    add_column :fights, :home_team_id, :integer
    add_column :fights, :away_team_id, :integer
  end
end
