class AddEmailToForms < ActiveRecord::Migration[5.0]
  def change
    add_column :forms, :email, :string
  end
end
