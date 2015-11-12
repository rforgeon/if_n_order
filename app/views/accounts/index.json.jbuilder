json.array!(@accounts) do |account|
  json.extract! account, :id, :name_on_card, :card_number, :security_code, :expiration_month, :expiration_year, :billing_first_name, :billing_last_name, :address_line1, :address_line2, :zip_code, :city, :state, :country, :phone_number, :user_id, :condition_id
  json.url account_url(account, format: :json)
end
