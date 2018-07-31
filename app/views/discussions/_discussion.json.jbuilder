json.extract! discussion, :id, :date, :color, :resolved, :created_at, :updated_at
json.url discussion_url(discussion, format: :json)
