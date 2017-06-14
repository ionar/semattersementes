class AddImageColumnsToPhotonoticias < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :photonoticias, :image
  end
end
