class AddBazarToPodrazdels < ActiveRecord::Migration[5.0]
  def change
    add_reference :podrazdels, :bazar, foreign_key: true
  end
end
