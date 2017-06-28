class AddAbstractToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :abstract, :string
  end
end
