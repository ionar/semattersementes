class RenamePhotonoticiaToPhotonoticias < ActiveRecord::Migration[5.0]
  def change
  	rename_table :photonoticia, :photonoticias
  end
end
