class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name, null: false, default: ""
      t.integer :duration
      t.integer :price
      t.references :business, foreign_key: true
      t.timestamps
    end
  end
end
