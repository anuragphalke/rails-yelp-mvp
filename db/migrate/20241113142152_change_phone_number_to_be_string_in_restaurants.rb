class ChangePhoneNumberToBeStringInRestaurants < ActiveRecord::Migration[7.1]
  def up
    change_column :restaurants, :phone_number, :string
  end
end
