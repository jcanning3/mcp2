json.extract! concert, :id, :name, :startTime, :location, :created_at, :updated_at
json.url concert_url(concert, format: :json)
