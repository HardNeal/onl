class AddImageToRestorans < ActiveRecord::Migration[5.0]
  def change
    add_column :restorans, :image, :string
  end
end
