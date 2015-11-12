json.array!(@deliveries) do |delivery|
  json.extract! delivery, :id, :first_name, :last_name, :address_line1, :address_line2, :zip_code, :city, :state, :country, :phone_number, :amazon_email, :amazon_password, :user_id, :condition_id
  json.url delivery_url(delivery, format: :json)
end
