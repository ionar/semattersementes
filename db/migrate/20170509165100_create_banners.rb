class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :image
      t.string :link
      t.integer :sequence

      t.timestamps
    end
  end
end
