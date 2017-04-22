class ChangeColumnNamePurpose < ActiveRecord::Migration[5.0]
  def change
  	 rename_column :purposes, :description, :name
  end
end