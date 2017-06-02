json.extract! resale, :id, :name, :company_name, :cnpj, :address, :neighborhood, :cep, :province, :phone, :email, :territory, :created_at, :updated_at
json.url resale_url(resale, format: :json)
