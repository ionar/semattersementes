class ChangeTerritoryTypeInResales < ActiveRecord::Migration[5.0]
  def change
  	change_column :resales, :territory, :text
  end
end
