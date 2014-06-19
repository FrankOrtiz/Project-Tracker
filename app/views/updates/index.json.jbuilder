json.array!(@updates) do |update|
  json.extract! update, :id, :who, :description, :project_id
  json.url update_url(update, format: :json)
end
