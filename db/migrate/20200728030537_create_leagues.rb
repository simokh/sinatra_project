class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.string :league_country
      t.integer :jersey_id 
    end
  end
end
