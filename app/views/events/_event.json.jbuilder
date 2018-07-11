json.extract! event, :id, :title, :description, :start, :end, :type_id, :team_id, :location_id, :notes, :color, :created_at, :updated_at
json.url event_url(event, format: :json)
