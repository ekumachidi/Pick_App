class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string     :tracking_code, :null => false
      t.integer    :weight_kg
      t.references :user,   index: true, foreign_key: true, :null => false
      t.string     :vendor, :null => false 		
      t.string     :location, :null => false


      t.timestamps null: false
    end
  end
end
