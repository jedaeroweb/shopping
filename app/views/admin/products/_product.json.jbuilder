json.extract! product, :id, :title, :enable, :created_at, :updated_at
json.url admin_product_url(product, format: :json)
