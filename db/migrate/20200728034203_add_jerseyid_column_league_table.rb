class AddJerseyidColumnLeagueTable < ActiveRecord::Migration
  def change
    add_column :leagues, :jersey_id, :string
  end
end
