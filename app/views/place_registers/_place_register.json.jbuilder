json.extract! place_register, :id, :type, :area_name, :description, :address, :latitude, :longitude, :created_at, :updated_at
json.url place_register_url(place_register, format: :json)
