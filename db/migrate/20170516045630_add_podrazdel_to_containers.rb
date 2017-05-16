class AddPodrazdelToContainers < ActiveRecord::Migration[5.0]
  def change
    add_reference :containers, :podrazdel, foreign_key: true
  end
end
