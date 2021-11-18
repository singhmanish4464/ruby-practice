class AddBrandIdToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :brand_id, :integer
  end
end
