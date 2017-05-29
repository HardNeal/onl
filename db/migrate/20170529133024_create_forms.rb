class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :container
      t.string :number
      t.text :description

      t.timestamps
    end
  end
end
