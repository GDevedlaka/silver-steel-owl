class ChangeDefaultFromBusiness < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:businesses, :background, '#ffb380')
  end
end
