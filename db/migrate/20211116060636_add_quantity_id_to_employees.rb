class AddQuantityIdToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :quantity_id, :integer
  end
end
