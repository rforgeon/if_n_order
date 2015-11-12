class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name_on_card
      t.string :card_number
      t.string :security_code
      t.string :expiration_month
      t.string :expiration_year
      t.string :billing_first_name
      t.string :billing_last_name
      t.string :address_line1
      t.string :address_line2
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country
      t.string :phone_number
      t.references :user, index: true
      t.references :condition, index: true

      t.timestamps
    end
  end
end
