json.extract! musician, :id, :name, :first, :last, :notes, :created_at, :updated_at
json.url musician_url(musician, format: :json)
