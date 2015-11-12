class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_line1
      t.string :address_line2
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country
      t.string :phone_number
      t.string :amazon_email
      t.string :amazon_password
      t.references :user, index: true
      t.references :condition, index: true

      t.timestamps
    end
  end
end
