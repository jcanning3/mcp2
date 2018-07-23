json.extract! event, :id, :name, :description, :start, :end, :type_id, :location_id, :notes, :color, :created_at, :updated_at
json.url event_url(event, format: :json)
