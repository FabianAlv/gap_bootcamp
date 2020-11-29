class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :nights
      t.integer :guests
      t.float :total_cost
      t.boolean :approved, null: false, default: false
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
