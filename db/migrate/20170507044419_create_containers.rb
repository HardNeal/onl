class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.string :name
      t.integer :number
      t.string :image

      t.timestamps
    end
  end
end
