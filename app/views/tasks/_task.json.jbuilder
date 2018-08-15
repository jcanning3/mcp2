json.extract! task, :id, :task_type_id, :type_id, :created_at, :updated_at
json.url task_url(task, format: :json)
