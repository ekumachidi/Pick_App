class CreatePaymentInfos < ActiveRecord::Migration
  def change
    create_table :payment_infos do |t|
      t.string :payment_type
      t.references :package, index: true, foreign_key: true
      t.boolean :received

      t.timestamps null: false
    end
  end
end
