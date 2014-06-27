json.array!(@watchings) do |watching|
  json.extract! watching, :id, :project_id, :user_id
  json.url watching_url(watching, format: :json)
end
