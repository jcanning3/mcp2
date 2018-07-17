json.array!(@locations) do |loc|
  json.extract! loc, :id
  json.title loc.name
end
