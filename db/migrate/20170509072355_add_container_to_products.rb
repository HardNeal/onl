class AddContainerToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :container, foreign_key: true
  end
end
