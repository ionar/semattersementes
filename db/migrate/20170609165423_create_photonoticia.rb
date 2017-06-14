class CreatePhotonoticia < ActiveRecord::Migration[5.0]
  def change
    create_table :photonoticia do |t|
      t.string :image

      t.timestamps
    end
  end
end
