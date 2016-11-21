class AddColumnsToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :address, :string
    add_column :businesses, :name, :string
    add_column :businesses, :phone_number, :string
    add_reference :businesses, :service, foreign_key: true
  end
end
