class CreateWins < ActiveRecord::Migration
  def change
    create_table :wins do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
