class AddCultivationsAndProducts < ActiveRecord::Migration[5.0]
  def change
  	create_table :cultivations_products, :id => false do |t|
      t.references :cultivation, :product
    end
  end
end
