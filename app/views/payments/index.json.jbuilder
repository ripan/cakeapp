json.array!(@payments) do |payment|
  json.extract! payment, :id, :amount, :success, :user_tab_id
  json.url payment_url(payment, format: :json)
end
