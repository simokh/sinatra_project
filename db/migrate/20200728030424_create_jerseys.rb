class CreateJerseys < ActiveRecord::Migration
  def change
    #create_table inhe from Migration 
    create_table :jerseys do |t|
      t.string :club_name
      t.integer :number
    end
  end
end
