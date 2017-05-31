class AddProxodToForms < ActiveRecord::Migration[5.0]
  def change
    add_column :forms, :proxod, :string
  end
end
