class CreateCouriers < ActiveRecord::Migration
  def change
    create_table :couriers do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
