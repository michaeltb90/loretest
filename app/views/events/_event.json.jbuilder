json.extract! event, :id, :timeline_id, :name, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
