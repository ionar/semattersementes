class CreateProductsPurposesRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :products_purposes_relations do |t|
    	t.references :product, :purpose
      	t.integer :stars
      	t.timestamps
    end
  end
end