json.array!(@lists) do |list|
  json.extract! list, :id, :info
  json.url list_url(list, format: :json)
end
