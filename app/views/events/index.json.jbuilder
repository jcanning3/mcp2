json.array!(@events) do |event|
  json.extract! event, :id, :start, :end, :notes
  json.resourceId event.location_id
  json.title event.name
  json.resource event.location.name
  json.color event.type.color
  json.textColor "#4d4d4d"
  json.url event_url(event, format: :html)
end
