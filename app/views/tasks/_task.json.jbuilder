json.extract! task, :id, :name, :order, :created_at, :updated_at
json.url task_url(task, format: :json)
