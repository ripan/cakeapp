json.array!(@tabs) do |tab|
  json.extract! tab, :id, :name, :venue_id
  json.url tab_url(tab, format: :json)
end
