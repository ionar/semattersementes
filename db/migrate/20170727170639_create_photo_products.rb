class CreatePhotoProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_products do |t|
      t.references :product, foreign_key: true
      t.attachment :photo

      t.timestamps
    end
  end
end
