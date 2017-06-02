class AddCityToResales < ActiveRecord::Migration[5.0]
  def change
    add_column :resales, :city, :string
  end
end
