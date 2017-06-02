class CreateResales < ActiveRecord::Migration[5.0]
  def change
    create_table :resales do |t|
      t.string :name
      t.string :company_name
      t.string :cnpj
      t.string :address
      t.string :neighborhood
      t.string :cep
      t.string :province
      t.string :phone
      t.string :email
      t.string :territory

      t.timestamps
    end
  end
end
