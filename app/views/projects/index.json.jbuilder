json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :who, :how
  json.url project_url(project, format: :json)
end
