json.extract! flight, :id, :musician_id, :airline_id, :confirmation, :flight, :from, :departure, :destination, :arrival, :notes, :created_at, :updated_at
json.url flight_url(flight, format: :json)
