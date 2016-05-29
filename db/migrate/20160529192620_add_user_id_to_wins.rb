class AddUserIdToWins < ActiveRecord::Migration
  def change
    add_column :wins, :user_id, :integer
    add_index :wins, :user_id
  end
end
