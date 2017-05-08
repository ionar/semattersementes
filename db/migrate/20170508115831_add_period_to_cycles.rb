class AddPeriodToCycles < ActiveRecord::Migration[5.0]
  def change
    add_column :cycles, :period_initial, :integer
    add_column :cycles, :period_final, :integer
  end
end
