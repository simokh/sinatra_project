class AddLeagueIdJerseys < ActiveRecord::Migration
  def change
    add_column :jerseys, :league_id, :string
  end
end
