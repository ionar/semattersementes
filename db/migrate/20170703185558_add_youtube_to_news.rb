class AddYoutubeToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :youtube, :string
  end
end
