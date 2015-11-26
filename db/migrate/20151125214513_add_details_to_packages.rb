class AddDetailsToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :destination, :string
    add_column :packages, :recipient, :string
    add_column :packages, :due_at, :time
    add_column :packages, :assigned, :boolean
    add_column :packages, :status, :boolean
  end
end
