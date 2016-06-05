class AddPublicToWins < ActiveRecord::Migration
  def change
    add_column :wins, :public, :boolean, default: true
  end
end
