class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :phone
      t.string :location

      t.timestamps null: false
    end
  end
end
