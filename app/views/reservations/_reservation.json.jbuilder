json.extract! reservation, :id, :name, :last_name, :email, :phone, :nights, :guests, :total_cost, :approved, :property_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
