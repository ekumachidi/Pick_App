class AddDetailsToCouriers < ActiveRecord::Migration
  def change
    add_column :couriers, :email_address, :string
    add_column :couriers, :password_digest, :string
  end
end
