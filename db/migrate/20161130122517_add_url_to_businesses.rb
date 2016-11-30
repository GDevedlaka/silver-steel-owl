class AddUrlToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :url, :string
  end
end
