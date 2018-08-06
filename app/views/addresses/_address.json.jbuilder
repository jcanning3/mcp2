json.extract! address, :id, :name, :nickname, :address1, :address2, :city, :state, :zip, :phone, :created_at, :updated_at
json.url address_url(address, format: :json)
