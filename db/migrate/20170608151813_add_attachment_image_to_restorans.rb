class AddAttachmentImageToRestorans < ActiveRecord::Migration
  def self.up
    change_table :restorans do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :restorans, :image
  end
end
