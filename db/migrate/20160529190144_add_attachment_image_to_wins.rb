class AddAttachmentImageToWins < ActiveRecord::Migration
  def self.up
    change_table :wins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :wins, :image
  end
end
