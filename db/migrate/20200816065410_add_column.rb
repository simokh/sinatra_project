class AddColumn < ActiveRecord::Migration
  def change
    add_column :leagues, :jersey_id, :integer 
  end
end
