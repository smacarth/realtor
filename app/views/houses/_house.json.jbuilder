json.extract! house, :id, :mls, :street_1, :street_2, :city, :state, :zipcode, :neighborhood, :sales_price, :date_listed, :bedrooms, :bathrooms, :garage_size, :square_feet, :lot_size, :description, :created_at, :updated_at
json.url house_url(house, format: :json)
