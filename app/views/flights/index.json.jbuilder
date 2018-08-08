json.array! @flights do |flight|
  json.id flight.id
  json.start flight.arrival
  json.end flight.arrival + 900
  json.title flight.musician.name + " arrives on " + flight.airline.name + " " + flight.flight
  json.resourceId "10"
  json.url flight_url(flight, format: :html)
end
