class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string     :tracking_code
      t.integer    :weight_kg
      t.references :user,   index: true, foreign_key: true
      t.references :vendor, index: true, foreign_key: true
      t.string     :location

      t.timestamps null: false
    end
  end
end
