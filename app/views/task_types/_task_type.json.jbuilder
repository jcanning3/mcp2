json.extract! task_type, :id, :name, :order, :created_at, :updated_at
json.url task_type_url(task_type, format: :json)
