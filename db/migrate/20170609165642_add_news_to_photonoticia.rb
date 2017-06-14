class AddNewsToPhotonoticia < ActiveRecord::Migration[5.0]
  def change
    add_reference :photonoticia, :news, foreign_key: true
  end
end
