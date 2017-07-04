class ChangeColumnDefault < ActiveRecord::Migration[5.0]
  def change
  	change_column_default :products, :active, true
  end
end
