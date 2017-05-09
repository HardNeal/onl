class AddBazarToContainers < ActiveRecord::Migration[5.0]
  def change
    add_reference :containers, :bazar, foreign_key: true
  end
end
