class AddUtilizationToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :utilization, :string
  end
end
