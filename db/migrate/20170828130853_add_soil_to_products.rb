class AddSoilToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :soil, :string
  end
end
