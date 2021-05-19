json.extract! cart, :id, :size, :color, :quantity, :created_at, :updated_at
json.url cart_url(cart, format: :json)
