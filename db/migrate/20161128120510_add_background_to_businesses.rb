class AddBackgroundToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :background, :string, default: "#f1c40f"
  end
end
