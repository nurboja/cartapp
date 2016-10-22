json.extract! product, :id, :title, :description, :price, :picture_url, :category, :subcategory, :created_at, :updated_at
json.url product_url(product, format: :json)