json.array!(@user_tabs) do |user_tab|
  json.extract! user_tab, :id, :tab_id, :user_id
  json.url user_tab_url(user_tab, format: :json)
end
