class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :package, index: true, foreign_key: true
      t.references :courier, index: true, foreign_key: true
      t.references :admin, index: true, foreign_key: true
      t.boolean :status

      t.timestamps null: false
    end
  end
end
