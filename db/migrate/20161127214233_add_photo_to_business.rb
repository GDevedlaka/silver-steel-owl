class AddPhotoToBusiness < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :photo, :string
  end
end
