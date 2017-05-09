class AddAttachmentImageToBazars < ActiveRecord::Migration
  def self.up
    change_table :bazars do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :bazars, :image
  end
end
