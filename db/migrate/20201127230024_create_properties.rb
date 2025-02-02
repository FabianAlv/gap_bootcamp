class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.float :price
      t.references :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
