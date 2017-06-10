class CreateRestorans < ActiveRecord::Migration[5.0]
  def change
    create_table :restorans do |t|
      t.string :name
      t.string :menu

      t.timestamps
    end
  end
end
