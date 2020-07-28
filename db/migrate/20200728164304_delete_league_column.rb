class DeleteLeagueColumn < ActiveRecord::Migration
  def change
    remove_column :leagues, :jersey_id
  end
end
