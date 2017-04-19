json.extract! product, :id, :name, :description, :cultivation_id, :cycle_id, :created_at, :updated_at
json.url product_url(product, format: :json)
