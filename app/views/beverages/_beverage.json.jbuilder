json.extract! beverage, :id, :name, :category, :quantity, :price, :created_at, :updated_at
json.url beverage_url(beverage, format: :json)
