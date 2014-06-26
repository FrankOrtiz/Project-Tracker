json.array!(@watchings) do |watching|
  json.extract! watching, :id, :watcher_id, :watched_id
  json.url watching_url(watching, format: :json)
end
