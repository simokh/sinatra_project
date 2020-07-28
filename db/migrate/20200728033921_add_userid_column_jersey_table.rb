class AddUseridColumnJerseyTable < ActiveRecord::Migration
  def change
    add_column :jerseys, :user_id, :string
  end
end
